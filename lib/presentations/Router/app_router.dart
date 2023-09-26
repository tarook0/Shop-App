import 'package:block_concept/cubit/counter_cubit.dart';
import 'package:block_concept/presentations/screen/home_screen.dart';
import 'package:block_concept/presentations/screen/secon_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter{
  final CounterCubit _counterCubit=CounterCubit();
  Route? onGenerateRoute(RouteSettings routeSettings ){
    switch (routeSettings.name) {
      case '/':
      return MaterialPageRoute(builder: (_)=>BlocProvider.value(
        value: _counterCubit,
        child: HomeScreeen(title: 'HomeScreen', color: Colors.blueAccent),
      ));
        break;
        case '/secound':
      return MaterialPageRoute(builder: (_)=>BlocProvider.value(
        value: _counterCubit,
        child: SecondScreeen(title: 'secoundScreen', color: Colors.redAccent),
      ));
        break;
        case '/third':
      return MaterialPageRoute(builder: (_)=>BlocProvider.value(
        value: _counterCubit,
        child: HomeScreeen(title: 'HomeScreen', color: Colors.greenAccent),
      ));
        break;
      default:
      return null;  
    }
    
  }
  void dispose(){
    _counterCubit.close();
  }
}