import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 22.5,
              childAspectRatio: 1 / 1.68,
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#0293C8'), width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '30% Off',
                              style: TextStyle(color: HexColor('#0293C8')),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('فستان فرح تركى',
                            style: TextStyle(
                                color: HexColor('#48145A'),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: HexColor('#FFE622'),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#0293C8'), width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '30% Off',
                              style: TextStyle(color: HexColor('#0293C8')),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('فستان فرح تركى',
                            style: TextStyle(
                                color: HexColor('#48145A'),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: HexColor('#FFE622'),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#0293C8'), width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '30% Off',
                              style: TextStyle(color: HexColor('#0293C8')),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('فستان فرح تركى',
                            style: TextStyle(
                                color: HexColor('#48145A'),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: HexColor('#FFE622'),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#0293C8'), width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '30% Off',
                              style: TextStyle(color: HexColor('#0293C8')),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('فستان فرح تركى',
                            style: TextStyle(
                                color: HexColor('#48145A'),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: HexColor('#FFE622'),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#0293C8'), width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '30% Off',
                              style: TextStyle(color: HexColor('#0293C8')),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('فستان فرح تركى',
                            style: TextStyle(
                                color: HexColor('#48145A'),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: HexColor('#FFE622'),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#0293C8'), width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '30% Off',
                              style: TextStyle(color: HexColor('#0293C8')),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text('فستان فرح تركى',
                            style: TextStyle(
                                color: HexColor('#48145A'),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: HexColor('#FFE622'),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
