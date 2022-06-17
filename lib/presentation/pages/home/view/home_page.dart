import 'package:appp/presentation/pages/home/cubit/home_cubit.dart';
import 'package:appp/presentation/pages/home/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
        return myScaffold(context);
      }),
    );
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("MVVM")),
        body: FutureBuilder(
          future: context.read<HomeCubit>().getData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Server errror"),
              );
            } else {
              return Center(child: Text("Ma'lumot keldi"),);
            }
          },
        ));
  }
}
