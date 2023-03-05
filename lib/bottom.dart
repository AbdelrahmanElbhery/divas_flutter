import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:training2/components/component.dart';
import 'package:training2/main_cubit/cubit.dart';
import 'package:training2/main_cubit/state.dart';
import 'package:training2/modules/notifications.dart';
import 'package:training2/modules/settings.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            titleSpacing: 0,
            elevation: 0,
            leadingWidth: 100,
            leading: Row(
              children: [
                IconButton(
                    onPressed: () {},
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
              HomeCubit.get(context).titles[HomeCubit.get(context).count],
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
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.article), label: 'المقالات'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'الرئيسية'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shop), label: 'المنتجات'),
            ],
            currentIndex: HomeCubit.get(context).count,
            onTap: (index) {
              HomeCubit.get(context).changeBottom(index);
            },
          ),
          body: HomeCubit.get(context)
              .bottom_screens[HomeCubit.get(context).count],
        );
      },
    );
  }
}
