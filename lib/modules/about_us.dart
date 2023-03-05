import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:training2/components/component.dart';
import 'package:training2/main_cubit/cubit.dart';
import 'package:training2/main_cubit/state.dart';
import 'package:training2/modules/settings.dart';

import 'notifications.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              'من نحن',
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
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .36,
                              height: 7,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'شاهد الان',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                  color: HexColor('#E40263')),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                        Text(
                          'احدث اخبار الموضة والجمال',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: HexColor('#E40263')),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => article(),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ),
                      itemCount: 2),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .21,
                              height: 7,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'ماذا',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                  color: HexColor('#E40263')),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                        Text(
                          'نقدم من خدمات',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: HexColor('#E40263')),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Image(
                                height:
                                    MediaQuery.of(context).size.height * .08,
                                width: MediaQuery.of(context).size.width * .5,
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/Sale_Category Banner Mobile.jpg'),
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'قسم خاص بفساتين الزفاف',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: HexColor('#005A95')),
                              textDirection: TextDirection.rtl,
                            ),
                            Text(
                              'ليله الزفاف هي من الليالي التي ينتظرها الكثير والكثير من الفتيات فهي ليله العمر لهم والليلة المنتظرة لهم وهو يوم الفرحة بالنسبة لهم لأنه من الايام التي تتمناها وتنتظرها كل فتاه ويجب أن تظهر كل فتاه بشكل مناسب للغاية لان الفتيات يعتبرون هذا اليوم بليلة العمر اي انها لا تأتي في عمرهم غير مرة واحده فحلم البنات من وهم صغار يحلمون بالفستان الابيض فهذا الفستان جميل بلونه الابيض البراق.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Image(
                                height:
                                    MediaQuery.of(context).size.height * .08,
                                width: MediaQuery.of(context).size.width * .5,
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/Sale_Category Banner Mobile.jpg'),
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'برنامج تنظيف البشرة و الشعر',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: HexColor('#005A95')),
                              textDirection: TextDirection.rtl,
                            ),
                            Text(
                              'ليله الزفاف هي من الليالي التي ينتظرها الكثير والكثير من الفتيات فهي ليله العمر لهم والليلة المنتظرة لهم وهو يوم الفرحة بالنسبة لهم لأنه من الايام التي تتمناها وتنتظرها كل فتاه ويجب أن تظهر كل فتاه بشكل مناسب للغاية لان الفتيات يعتبرون هذا اليوم بليلة العمر اي انها لا تأتي في عمرهم غير مرة واحده فحلم البنات من وهم صغار يحلمون بالفستان الابيض فهذا الفستان جميل بلونه الابيض البراق.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .36,
                              height: 7,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'شاهد الان',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20,
                                  color: HexColor('#E40263')),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                        Text(
                          'احدث اخبار الموضة والجمال',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: HexColor('#E40263')),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * .23,
                    child: Card(
                      child: Image(
                        image: AssetImage(
                            'assets/images/Sale_Category Banner Mobile.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'ديفا ... خلي جمالك علينا ... هدفنا الأول والأخير هو جعلك تبرزين جمالك بوضع المكياج الذي يليق بكِ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: HexColor('#E40263')),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'مقال بالموقع',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20,
                                          color: HexColor('#48145A')),
                                      textDirection: TextDirection.rtl,
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
                                Text(
                                  'ليله الزفاف هي من الليالي التي ينتظرها الكثير والكثير من الفتيات فهي ليله العمر لهم والليلة المنتظرة لهم وهو يوم الفرحة بالنسبة لهم لأنه من الايام التي تتمناها وتنتظرها كل فتاه ويجب أن تظهر كل فتاه بشكل مناسب للغاية لان الفتيات يعتبرون هذا اليوم بليلة العمر اي انها لا تأتي في عمرهم غير مرة واحده فحلم البنات من وهم صغار يحلمون بالفستان الابيض فهذا الفستان جميل بلونه الابيض البراق.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ),
                      itemCount: 2),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .2,
                    child: GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(10),
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        childAspectRatio: 1 / .4,
                        crossAxisCount: 2,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '+7.55',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      'مقال بالموقع',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: HexColor('#000000')),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .08,
                                  width:
                                      MediaQuery.of(context).size.width * .15,
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: HexColor('#CBCBCB'),
                                    child: Icon(
                                      Icons.fmd_good,
                                      color: HexColor('#48145A'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '+7.55',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      'مقال بالموقع',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: HexColor('#000000')),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .08,
                                  width:
                                      MediaQuery.of(context).size.width * .15,
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: HexColor('#CBCBCB'),
                                    child: Icon(
                                      Icons.fmd_good,
                                      color: HexColor('#48145A'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '+7.55',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      'مقال بالموقع',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: HexColor('#000000')),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .08,
                                  width:
                                      MediaQuery.of(context).size.width * .15,
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: HexColor('#CBCBCB'),
                                    child: Icon(
                                      Icons.fmd_good,
                                      color: HexColor('#48145A'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '+7.55',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      'مقال بالموقع',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: HexColor('#000000')),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .08,
                                  width:
                                      MediaQuery.of(context).size.width * .15,
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: HexColor('#CBCBCB'),
                                    child: Icon(
                                      Icons.fmd_good,
                                      color: HexColor('#48145A'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black87,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(2, 1))
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
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
                'ليله الزفاف هي من الليالي التي ينتظرها الكثير والكثير من الفتيات فهي ليله العمر لهم والليلة المنتظرة لهم وهو يوم الفرحة بالنسبة لهم لأنه من الايام التي تتمناها وتنتظرها كل فتاه ويجب أن تظهر كل فتاه بشكل مناسب للغاية لان الفتيات يعتبرون هذا اليوم بليلة العمر اي انها لا تأتي في عمرهم غير مرة واحده فحلم البنات من وهم صغار يحلمون بالفستان الابيض فهذا الفستان جميل بلونه الابيض البراق.',
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
