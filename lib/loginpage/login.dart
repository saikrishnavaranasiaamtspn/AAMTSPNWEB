import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pract/cubit/body_cubit.dart';

import 'package:pract/firbaseauth/auth.dart';

import 'package:pract/styles/boxdec.dart';
import 'package:pract/styles/text.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/loginbackground.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Container(
              height: 500,
              width: 400,
              color: Color.fromRGBO(0, 0, 0, 0.82),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                        )),
                  ),
                  Text(
                    'Login to your Account',
                    style:
                        Txtsty.nunitoSanssty(FontWeight.bold, 24, Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'See what is going on around you',
                    style: Txtsty.nunitoSanssty(
                        FontWeight.normal, 12, Colors.white),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            side: BorderSide(width: 1, color: Colors.white)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/googlelogo.png',
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 13),
                              Text(
                                'Continue with Google',
                                style: Txtsty.nunitoSanssty(
                                    FontWeight.normal, 12, Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '------------- or Sign in with Email ------------- ',
                        style: Txtsty.nunitoSanssty(
                            FontWeight.w400, 12, Colors.white),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Email',
                            style: Txtsty.nunitoSanssty(
                                FontWeight.w400, 12, Colors.white),
                          )),
                      Container(
                        height: 41,
                        child: TextFormField(
                            controller: email,
                            scrollPadding: EdgeInsets.all(0),
                            style: TextStyle(color: Colors.white),
                            decoration: Boxdec.inputboxdec()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Password',
                            style: Txtsty.nunitoSanssty(
                                FontWeight.w400, 12, Colors.white),
                          )),
                      Container(
                        height: 41,
                        child: TextFormField(
                            controller: password,
                            scrollPadding: EdgeInsets.all(0),
                            style: TextStyle(color: Colors.white),
                            decoration: Boxdec.inputboxdec()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Builder(
                        builder: (BuildContext context) {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(255, 126, 110, 1),
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {
                                Auth()
                                    .signIn(
                                        email: email.text,
                                        password: password.text)
                                    .then((result) {
                                  if (result == null) {
                                  } else {
                                    Flushbar(
                                      flushbarPosition: FlushbarPosition.TOP,
                                      messageText: Center(
                                          child: Text(
                                        'Invalid code. Please try again',
                                        style: Txtsty.nunitoSanssty(
                                          FontWeight.w500,
                                          14,
                                          Color.fromRGBO(242, 242, 242, 1),
                                        ),
                                      )),
                                      backgroundColor:
                                          Color.fromRGBO(235, 87, 87, 1),
                                      duration: Duration(seconds: 3),
                                    ).show(context);
                                  }
                                });
                              },
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: Txtsty.nunitoSanssty(
                                      FontWeight.bold, 18, Colors.white),
                                ),
                              ));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
