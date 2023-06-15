import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:training2/components/component.dart';
import 'package:training2/modules/notifications.dart';
import 'package:training2/modules/settings.dart';

import '../main_cubit/cubit.dart';
import '../main_cubit/state.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'للتواصل',
      'البريد الالكترونى',
      'ساعات العمل',
      'العنوان',
    ];
    List<String> title2 = [
      '+20111 165 0556',
      'admin@deltawy.com',
      'يوميا من 12:00م الي 01:00ص  يوم الجمعة من 03:00م الي 01:00ص',
      'شارع البحر - بجوار مستشفى 6 أكتوبر - أسفل مطعم كزا روزا',
    ];
    List<IconData> icons = [
      Icons.phone,
      Icons.mail,
      Icons.av_timer_outlined,
      Icons.location_on
    ];

    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            titleSpacing: 0,
            elevation: 3,
            leadingWidth: 100,
            leading: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    IconButton(
                      onPressed: () {
                        navigate_to(context: context, widget: Notifications());
                      },
                      icon: Icon(
                        MdiIcons.bellAlert,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0, top: 5),
                      child: CircleAvatar(
                        radius: 9,
                        child: Text('2'),
                        backgroundColor: Colors.pink,
                      ),
                    )
                  ],
                ),
              ],
            ),
            title: Text(
              'تواصل معنا',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    navigate_to(context: context, widget: Settings());
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: MediaQuery.of(context).size.width * .19,
                        child: Card(
                          color: HexColor('#2879FE'),
                          child: Icon(Icons.facebook),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: MediaQuery.of(context).size.width * .19,
                        child: Card(
                          color: HexColor('#8B6AFD'),
                          child: Icon(MdiIcons.facebookMessenger),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: MediaQuery.of(context).size.width * .19,
                        child: Card(
                          color: Colors.green,
                          child: Icon(MdiIcons.whatsapp),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: MediaQuery.of(context).size.width * .19,
                        child: Card(
                          color: HexColor('#C21975'),
                          child: Icon(MdiIcons.instagram),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          article(title[index], title2[index], icons[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 13,
                          ),
                      itemCount: 4),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .3,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .25,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .23,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/maps.jpg')),
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Positioned(
                        top: 200,
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  size: 20,
                                  Icons.cancel_outlined,
                                  color: HexColor('#E50263'),
                                ),
                              ),
                              Spacer(),
                              Text(
                                'المحلة الكبرى , بنزيون',
                                style: TextStyle(
                                    fontSize: 14, color: HexColor('#959DAD')),
                              ),
                              Icon(
                                Icons.location_on,
                                size: 20,
                                color: HexColor('#E50263'),
                              )
                            ],
                          ),
                          height: MediaQuery.of(context).size.height * .04,
                          width: MediaQuery.of(context).size.width * .45,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DefaultButton(
                        function: () {},
                        color: HexColor('#E50263'),
                        containerheight:
                            MediaQuery.of(context).size.height * .07,
                        radius: 5,
                        text: 'ارسال'),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget article(String title, String title2, IconData icon) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    title2,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                icon,
                color: HexColor('#4A4B4D'),
                size: 35,
              )
            ],
          ),
        ),
      );
}
