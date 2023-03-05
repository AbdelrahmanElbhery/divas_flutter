import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:training2/components/component.dart';
import 'package:training2/facebook.dart';
import 'package:training2/main_cubit/state.dart';

import 'main_cubit/cubit.dart';
import 'modules/articles/inside_article.dart';

class Home_Scr extends StatefulWidget {
  const Home_Scr({Key? key}) : super(key: key);

  @override
  State<Home_Scr> createState() => _Home_ScrState();
}

class _Home_ScrState extends State<Home_Scr> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
    }

    List<Widget> images = [
      Image(image: AssetImage('assets/images/onboard1.jpeg')),
      Image(image: AssetImage('assets/images/onboard1.jpeg')),
      Image(image: AssetImage('assets/images/onboard1.jpeg')),
    ];
    var pageviewController = PageController();
    int count2 = 0;
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    controller: pageviewController,
                    itemBuilder: (context, index) => Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Image(
                          image: AssetImage('assets/images/onboard1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'bla bla',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              Text(
                                'bla bla',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              DefaultButton(
                                  function: () {},
                                  text: 'تسوق الان',
                                  bordercolor: Colors.grey,
                                  width: 120,
                                  radius: 40,
                                  color: Colors.transparent),
                              SizedBox(
                                height: 15,
                              ),
                              SmoothPageIndicator(
                                controller: pageviewController,
                                count: 3,
                                effect: WormEffect(
                                  spacing: 5,
                                  dotColor: Colors.white,
                                  activeDotColor: Colors.pinkAccent,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    itemCount: 4,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  child: Card(
                    color: HexColor('#FEF2F7'),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/Sale_Category Banner Mobile.jpg'),
                                fit: BoxFit.fill,
                                width: 107,
                                height: 97,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.favorite),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.access_time_filled_sharp)
                                ],
                              ),
                            ],
                            mainAxisSize: MainAxisSize.min,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'تخفيضات الجمعة البيضاء',
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                Container(
                                  height: 80,
                                  child: Text(
                                    'احصل على خصومات رائعة من سنتر ديفا بمناسبة الجمعة البضاء من شهر نوفمبر',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    maxLines: 2,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.remove_red_eye_outlined),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text('2200'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(Icons.favorite),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text('200'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(Icons.share),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text('200'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 82,
                        child: Card(
                          color: HexColor('#CBCBCB'),
                          child: Icon(Icons.fmd_good),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 60,
                        width: 82,
                        child: Card(
                          color: HexColor('#CBCBCB'),
                          child: Icon(Icons.fmd_good),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 60,
                        width: 82,
                        child: Card(
                          color: HexColor('#CBCBCB'),
                          child: Icon(Icons.fmd_good),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 60,
                        width: 82,
                        child: Card(
                          color: HexColor('#CBCBCB'),
                          child: Icon(Icons.fmd_good),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            navigate_to(
                                context: context, widget: FacebookPosts());
                          },
                          child: Text(
                            'شاهد الكل',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                            textDirection: TextDirection.rtl,
                          )),
                      Spacer(),
                      Text(
                        'بوستات الفيس بوك',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
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
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'November 16,2022',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.grey),
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
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.height * .18,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                        textDirection: TextDirection.rtl,
                                        'الأصدقاء لا يغارون الأصدقاء يساعدون على التألق'),
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Image(
                                        height: 100,
                                        image: AssetImage(
                                            'assets/images/Sale_Category Banner Mobile.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .1,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.height * .18,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                        textDirection: TextDirection.rtl,
                                        'الأصدقاء لا يغارون الأصدقاء يساعدون على التألق'),
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Image(
                                        height: 100,
                                        image: AssetImage(
                                            'assets/images/Sale_Category Banner Mobile.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Text(
                              'شاهد الكل',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                              textDirection: TextDirection.rtl,
                            ),
                            Spacer(),
                            Text(
                              'فساتين ,ميكب اب',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.5,
                          childAspectRatio: 1 / 1.3,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    elevation: 0,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/Sale_Category Banner Mobile.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text('فستان فرح تركى')
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    elevation: 0,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/Sale_Category Banner Mobile.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text('فستان فرح تركى')
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    elevation: 0,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/Sale_Category Banner Mobile.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text('فستان فرح تركى')
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    elevation: 0,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/Sale_Category Banner Mobile.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text('فستان فرح تركى')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'شاهد الكل',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                        textDirection: TextDirection.rtl,
                      ),
                      Spacer(),
                      Text(
                        'فديوهات الفنانين',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .23,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(
                      image: AssetImage(
                          'assets/images/Sale_Category Banner Mobile.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .23,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(
                      image: AssetImage(
                          'assets/images/Sale_Category Banner Mobile.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .9,
                      height: MediaQuery.of(context).size.height * .3,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image(
                          image: AssetImage(
                              'assets/images/Sale_Category Banner Mobile.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'شاهد الكل',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          'شاهد الان',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Colors.black)),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'تصفح الان',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
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
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    HomeCubit.get(context).getArticlesDetails(
                        HomeCubit.get(context).articles!.data![0].id!);
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
                            image: AssetImage(
                                'assets/images/Sale_Category Banner Mobile.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          HomeCubit.get(context).articles!.data![0].name!,
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
