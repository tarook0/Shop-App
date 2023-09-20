

import 'package:block_concept/cubit/counter_cubit.dart';
import 'package:block_concept/presentations/screen/secon_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdScreeen extends StatelessWidget {
   ThirdScreeen(  {
    super.key,  required this.title,  required this.color,
  });
   final String title;
   final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CounterCubit, CounterState>(
        listener: (context, state) {
          if(state.wasIncremented==true){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Incremented! '),
              duration: Duration(milliseconds: 300),
              )
            );
          }
          
          else if(state.wasIncremented==false){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Decremented! '),
              duration: Duration(milliseconds: 300),
              )
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("you have to push this many times "),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(
                    state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    heroTag: 'Dgreen',
                    backgroundColor: color,
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                      // onPressed:() {context.bloc<CounterCubit>().decrement();
                    },
                    tooltip: 'Deccrement',
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    backgroundColor: color,
                    heroTag: 'Igreen',
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                      // onPressed:() {context.bloc<CounterCubit>().decrement();
                    },
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                
                ],
              ),
                
            ],
          ),
        ),
      ),
    );
  }
}
