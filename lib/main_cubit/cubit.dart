import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training2/main_cubit/state.dart';
import 'package:training2/models/article_details_model.dart';
import 'package:training2/models/articles_model.dart';
import 'package:training2/models/facebookmodel.dart';
import 'package:training2/shared/dio.dart';

import '../home.dart';
import '../modules/articles/articles.dart';
import '../modules/products.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialStates());

  static HomeCubit get(context) => BlocProvider.of(context);
  List<Widget> bottom_screens = [
    ArticlesScreen(),
    Home_Scr(),
    ProductsScreen()
  ];
  int count = 1;
  List<String> titles = [
    'المقالات',
    'الرئيسية',
    'الفساتين',
  ];
  List<Widget> visited_screens = [
    Home_Scr(),
  ];

  void changeBottom(int index) {
    count = index;
    emit(HomeBottomChangeSuccesStates());
  }
}
