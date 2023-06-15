import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:training2/components/component.dart';
import 'package:training2/main_cubit/cubit.dart';
import 'package:training2/main_cubit/state.dart';

import '../../bottom.dart';
import '../../models/article_details_model.dart';

class InsideArticles extends StatelessWidget {
  const InsideArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: ConditionalBuilder(
            condition: state is! GetArticleDetailsLoading,
            builder: (context) => SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(
                        height: MediaQuery.of(context).size.height * .3,
                        image: AssetImage('assets/images/article_photo.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'لا يوجد تعليقات',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.message,
                              size: 20,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '6 : 55 م',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.punch_clock_rounded,
                              size: 20,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'سبتمبر 2022',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.calendar_month,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'مقالة',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  article(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * .4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#CBCBCB').withOpacity(.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  MdiIcons.facebook,
                                  size: 40,
                                  color: HexColor('#0F75BD'),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Divanice',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                      color: HexColor(
                                        '#0F75BD',
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * .4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#CBCBCB').withOpacity(.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  MdiIcons.instagram,
                                  size: 40,
                                  color: HexColor('#C21975'),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Divanice',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                      color: HexColor(
                                        '#0F75BD',
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DefaultButton(
                          function: () {
                            Navigator.pop(context);
                          },
                          text: 'الصفحة السابقة',
                          containerheight:
                              MediaQuery.of(context).size.height * .06,
                          color: Colors.white,
                          bordercolor: HexColor('#E50263'),
                          radius: 30,
                          textcolor: HexColor('#E50263'),
                          width: MediaQuery.of(context).size.width * .4),
                      DefaultButton(
                          function: () {
                            navigateandfinish(
                                context: context, widget: BottomBarScreen());
                          },
                          text: 'رجوع للرئيسية',
                          containerheight:
                              MediaQuery.of(context).size.height * .06,
                          color: HexColor('#E50263'),
                          radius: 30,
                          width: MediaQuery.of(context).size.width * .4),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            fallback: (context) => Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }

  Widget article() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'كلام مقالات',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 10,
            ),
          ],
        ),
      );
}
