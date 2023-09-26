import 'package:block_concept/cubit/counter_cubit.dart';
import 'package:block_concept/presentations/Router/app_router.dart';
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
  final AppRouter _appRouter=AppRouter(); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       onGenerateRoute: _appRouter.onGenerateRoute,

      
    );
  }
  @override
  void dispose(){
    _appRouter.dispose();
    super.dispose();
  }
}
