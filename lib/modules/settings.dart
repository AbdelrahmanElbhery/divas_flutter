import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:training2/bottom.dart';
import 'package:training2/components/component.dart';
import 'package:training2/main_cubit/cubit.dart';
import 'package:training2/main_cubit/state.dart';
import 'package:training2/modules/about_us.dart';
import 'package:training2/modules/notifications.dart';

import '../login.dart';
import 'contact.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'المقالات',
      'اتصل بنا',
      'من نحن',
      'تسجيل الخروج',
    ];
    List<IconData> icons = [
      Icons.article,
      MdiIcons.phone,
      MdiIcons.information,
      MdiIcons.exitToApp
    ];

    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (contetx, state) {},
      builder: (contetx, state) {
        return Scaffold(
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
              'الصفحات',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .15,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Sale_Category Banner Mobile.jpg'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Diva center',
                    style: TextStyle(
                        color: HexColor('#49155B'),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  setings(context, 'المقالات', Icons.article, () {
                    HomeCubit.get(context).count = 0;
                    //HomeCubit.get(context).changeBottom(0);
                    navigateandfinish(
                        context: context, widget: BottomBarScreen());
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  setings(context, 'اتصل بنا', MdiIcons.phone, () {
                    navigate_to(context: context, widget: ContactUs());
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  setings(context, 'من نحن', MdiIcons.information, () {
                    navigate_to(context: context, widget: AboutScreen());
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  setings(context, 'تسجيل الخروج', MdiIcons.exitToApp, () {
                    navigateandfinish(context: context, widget: Login());
                  }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget setings(context, String title, IconData icon, var func) => Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .08,
            width: MediaQuery.of(context).size.width * .9,
          ),
          InkWell(
            onTap: func,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery.of(context).size.width * .85,
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: HexColor('#D8D8D8'),
              child: Icon(
                icon,
                color: HexColor('#4A4B4D'),
              ),
            ),
          )
        ],
      );
}
