import 'package:flutter/material.dart';
import 'package:training2/components/component.dart';
import 'package:training2/instruction.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
                textAlign: TextAlign.right,
              ),
              Text(
                'اضف معلومات الدخول',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        border: InputBorder.none,
                        hintText: 'رقم الهاتف'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: 'كلمة السر'),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DefaultButton(
                  function: () {},
                  text: 'الدخول',
                  color: Colors.pinkAccent,
                  height: 30,
                  containerheight: 50,
                  radius: 40),
              SizedBox(
                height: 15,
              ),
              DefaultButton(
                  function: () {
                    navigateandfinish(context: context, widget: Instructions());
                  },
                  text: 'تخطي',
                  color: Colors.white,
                  textcolor: Colors.pinkAccent,
                  bordercolor: Colors.pinkAccent,
                  height: 30,
                  containerheight: 50,
                  radius: 40),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.transparent),
                  color: Colors.pinkAccent,
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      height: 35,
                      child: Text('الدخول باستخدام جوجل',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white)),
                    ),
                    Icon(
                      Icons.network_check,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.transparent),
                  color: Colors.pinkAccent,
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      height: 35,
                      child: Text('الدخول باستخدام الفيس بوك',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white)),
                    ),
                    Icon(
                      Icons.network_check,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
