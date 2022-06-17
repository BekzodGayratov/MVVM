import 'dart:convert';

import 'package:appp/presentation/pages/home/cubit/home_state.dart';
import 'package:appp/service/global/get_request_service.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  int counter = 0;

  void incerementCounter() {
    counter += 1;
    emit(HomeChangeState());
  }

  Future<dynamic> getData() async {
    dynamic response;
    await GetService.getRequest("https://nbu.uz/uz/exchange-rates/json/")
        .then((value) {
      response = value;
      return response;
    });
    return "hello";
  }
}
