import 'package:appp/presentation/pages/home/cubit/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  int counter = 0;

  void incrementCounter() {
    counter += 1;
    emit(HomeChangeState());
  }
}
