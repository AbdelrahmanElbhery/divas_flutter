import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:training2/components/component.dart';
import 'package:training2/main_cubit/cubit.dart';
import 'package:training2/main_cubit/state.dart';
import 'package:training2/modules/notifications.dart';
import 'package:training2/modules/settings.dart';

class FacebookPosts extends StatelessWidget {
  const FacebookPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
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
              'بوستات فيس بوك',
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
          backgroundColor: Colors.white,
          body: ListView.separated(
              itemBuilder: (context, index) => posts(context),
              separatorBuilder: (context, index) => SizedBox(
                    height: 5,
                  ),
              itemCount: 3),
        );
      },
    );
  }

  Widget posts(context) => Container(
        height: MediaQuery.of(context).size.height * .59,
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Diva widding dress',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'November 16,2022',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/Sale_Category Banner Mobile.jpg',
                      ),
                      radius: 25,
                    )
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'الأصدقاء لا يغارون الأصدقاء يساعدون على التألق',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 2,
                  child: Image(
                      image: AssetImage(
                          'assets/images/Sale_Category Banner Mobile.jpg')),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 12,
                        child: Icon(
                          MdiIcons.thumbUp,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 12,
                        child: Icon(
                          Icons.favorite_outlined,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '20',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#606770')),
                      ),
                      Spacer(),
                      Text(
                        '1 comment',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#606770')),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: BoxDecoration(
                        color: HexColor('#E50263'),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.facebook,
                          color: Colors.blue[500],
                          size: 30,
                        ),
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'اضغط للذهاب للفيس بوك',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
