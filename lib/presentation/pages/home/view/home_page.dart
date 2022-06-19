import 'package:appp/presentation/pages/home/cubit/home_cubit.dart';
import 'package:appp/presentation/pages/home/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) => myScaffold(context));
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MVVM")),
      body: Center(
        child: Text(context.watch<HomeCubit>().counter.toString(),style: TextStyle(fontSize:60),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<HomeCubit>().incrementCounter();
      }),
    );
  }
}
