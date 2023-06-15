import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:training2/components/component.dart';
import 'package:training2/facebook.dart';
import 'package:training2/main_cubit/state.dart';
import 'package:training2/modules/inside_product.dart';

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
      const Image(image: AssetImage('assets/images/onboard1.jpeg')),
      const Image(image: AssetImage('assets/images/onboard1.jpeg')),
      const Image(image: AssetImage('assets/images/onboard1.jpeg')),
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
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: pageviewController,
                    itemBuilder: (context, index) => Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/onboard1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'offers',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 17),
                              ),
                              const Text(
                                'offers',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 17),
                              ),
                              DefaultButton(
                                  function: () {},
                                  text: 'تسوق الان',
                                  bordercolor: Colors.grey,
                                  width: 120,
                                  radius: 40,
                                  color: Colors.transparent),
                              const SizedBox(
                                height: 15,
                              ),
                              SmoothPageIndicator(
                                controller: pageviewController,
                                count: 3,
                                effect: const WormEffect(
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
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  child: Card(
                    color: HexColor('#FEF2F7'),
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
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
                                SizedBox(
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
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      '2200',
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text('200'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.share,
                                      size: 20,
                                    ),
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
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            navigate_to(
                                context: context,
                                widget: const FacebookPosts());
                          },
                          child: const Text(
                            'شاهد الكل',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                            textDirection: TextDirection.rtl,
                          )),
                      const Spacer(),
                      const Text(
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
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 6.0),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.height * .18,
                              child: const Column(
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
                            SizedBox(
                              width: MediaQuery.of(context).size.height * .18,
                              child: const Column(
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
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.count(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.5,
                          childAspectRatio: 1 / 1.3,
                          children: [
                            InkWell(
                              onTap: () {
                                navigate_to(
                                    context: context, widget: InProduct());
                              },
                              child: Column(
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
                            ),
                            InkWell(
                              onTap: () {
                                navigate_to(
                                    context: context, widget: InProduct());
                              },
                              child: Column(
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
                            ),
                            InkWell(
                              onTap: () {
                                navigate_to(
                                    context: context, widget: InProduct());
                              },
                              child: Column(
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
                            ),
                            InkWell(
                              onTap: () {
                                navigate_to(
                                    context: context, widget: InProduct());
                              },
                              child: Column(
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                        'صور الفنانين',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .23,
                    child: const Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: AssetImage(
                            'assets/images/Sale_Category Banner Mobile.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .23,
                    child: const Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: AssetImage(
                            'assets/images/Sale_Category Banner Mobile.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .9,
                      height: MediaQuery.of(context).size.height * .3,
                      child: const Card(
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
                        const Text(
                          'شاهد الكل',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                        const Text(
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
                            child: const Text(
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
                const SizedBox(
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
                          const SizedBox(
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
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    navigate_to(
                        context: context, widget: const InsideArticles());
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
                            image: const AssetImage(
                                'assets/images/Sale_Category Banner Mobile.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'title',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: HexColor('#005A95')),
                          textDirection: TextDirection.rtl,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
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
