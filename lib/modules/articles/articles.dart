import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:training2/components/component.dart';
import 'package:training2/main_cubit/cubit.dart';
import 'package:training2/main_cubit/state.dart';
import 'package:training2/models/articles_model.dart';

import 'inside_article.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
              itemBuilder: (context, index) => articlescr(context),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: 5),
        ));
    ;
  }

  Widget articlescr(context) => InkWell(
        onTap: () {
          navigate_to(context: context, widget: InsideArticles());
        },
        child: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width * .9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: Colors.grey[200],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  height: MediaQuery.of(context).size.height * .2,
                  image: AssetImage('assets/images/article_photo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'title',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: HexColor('#005A95')),
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'لايوجد تعليقات',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.message,
                      size: 18,
                    ),
                    Spacer(),
                    Text(
                      textAlign: TextAlign.center,
                      'سبتمبر 2022',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
