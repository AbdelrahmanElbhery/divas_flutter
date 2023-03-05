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

  ArticlesModels? articles;
  void getArticles() {
    emit(GetArticlesLoading());
    Maindio.getdata(path: 'rest/tables.article/getArticlesPojo').then((value) {
      articles = ArticlesModels.fromJson(value?.data);
      articles?.data?.forEach((element) {
        Maindio.getdata(path: 'images', query: {'id': element.imageId})
            .then((value) {
          element.image = value?.data;
        }).catchError((error) {
          print(error);
        });
      });
      print(articles?.data?[0].name);
      print(articles?.data?[2].image);

      emit(GetArticlesSuccess());
    }).catchError((error) {
      print(error);
      emit(GetArticlesError());
    });
  }

  ArticlesDetailsModel? articlesdetails;

  void getArticlesDetails(int id) {
    emit(GetArticleDetailsLoading());
    Maindio.postdata(
        path: 'rest/tables.article/getArticleDetails',
        data: {'id': id}).then((value) {
      articlesdetails = ArticlesDetailsModel.fromJson(value?.data);
      print(articlesdetails?.name);
      emit(GetArticleDetailsSuccess());
    }).catchError((error) {
      print(error);
      emit(GetArticleDetailsError());
    });
  }

  FacebookModel? facebookmodel;

  void getFacebookPosts() {
    emit(GetFacebookLoading());
    Dio()
        .get(
      'https://graph.facebook.com/v15.0/272272949882404?fields=feed%7Bmessage%2Cfull_picture%2Ccreated_time%2Cpermalink_url%2Clikes.summary(true)%7D&access_token=EAAVoclWUZCSABAIMxKyiMXI4jpsW2IoC6WlWAQ4mUA2LR0fkzr3vmSLyGFBrBPzTrBLZB0QyI9NwxRQYYlWZBrV1xy6N6SQdl8CYSQAHzEz38SX4gcGMiSv3243NjDCbswf0Bx40HNLZATUfqPhZBZAKqoA6crHSa9sHj5NSpl6W6YeBFTWtKWHOYxmcPrhogZD',
    )
        .then((value) {
      print(value.data);
      emit(GetFacebookSuccess());
    }).catchError((error) {
      print(error);
      emit(GetFacebookError());
    });
  }
}
