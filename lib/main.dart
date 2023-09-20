import 'package:block_concept/cubit/counter_cubit.dart';
import 'package:block_concept/presentations/screen/home_screen.dart';
import 'package:block_concept/presentations/screen/secon_screen.dart';
import 'package:block_concept/presentations/screen/thierd_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final CounterCubit _CounterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (context) => BlocProvider.value(
                value: _CounterCubit,
                child: HomeScreeen(
                  title: 
                  'title',
                  color: 
                  Colors.blue,
                ),
              ),
          '/second': (context) => BlocProvider.value(
                value:  _CounterCubit,
                child: SecondScreeen( title: 'second',color:Colors.redAccent ,),
              ),
          '/third': (context) => BlocProvider.value(
                value:  _CounterCubit,
                child: ThirdScreeen( title:'second', color:  Colors.green,),
              ),
        },
      
    );
  }
  @override
  void dispose(){
    _CounterCubit.close();
    super.dispose();
  }
}
