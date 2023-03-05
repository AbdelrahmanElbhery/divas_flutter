import 'package:flutter/material.dart';
import 'package:training2/components/component.dart';

import 'bottom.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: double.infinity,
              height: 200,
              child: Image(image: AssetImage('assets/images/onboard1.jpeg'))),
          SizedBox(
            height: 15,
          ),
          Text(
            'اتيلية ديفا',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 271,
            child: Text(
              'ابحث عن المنتجات التي تريدها من حيث افضل الفساتين وافضل الميكب اب',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                  fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 97.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DefaultButton(
                function: () {
                  navigateandfinish(
                      context: context, widget: BottomBarScreen());
                },
                text: 'التالي',
                containerheight: 56,
                color: Colors.pinkAccent,
                radius: 40),
          )
        ],
      ),
    );
  }
}
