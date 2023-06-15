import 'package:flutter/material.dart';
import 'package:st_stor_ecommers/commen_wiget/Commen_TextFiled.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_buttons.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_text.dart';
import 'package:st_stor_ecommers/scrrens/sign_Up.dart';

class Sign_in extends StatefulWidget {
  @override
  _Sign_inState createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final globlekey = GlobalKey<FormState>();
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: globlekey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Commen_Text(
                      text: 'Perth, Western Australia',
                      FontWeight: FontWeight.w500,
                      FontSize: 18,
                      Color: Colors.black,
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Commen_Text(
                  Color: Colors.black,
                  FontSize: 25,
                  FontWeight: FontWeight.bold,
                  text: 'Let’s Sign You In',
                ),
                SizedBox(
                  height: 10,
                ),
                Commen_Text(
                  Color: Colors.grey,
                  FontSize: 18,
                  FontWeight: FontWeight.bold,
                  text: 'Welcome back, you’ve been missed!',
                ),
                SizedBox(
                  height: 70,
                ),
                Commen_Text(
                  Color: Colors.grey,
                  FontSize: 16,
                  FontWeight: FontWeight.bold,
                  text: 'Username or Email',
                ),
                SizedBox(
                  height: 20,
                ),
                Commen_TextFiled(
                  onchange: (value) {
                    globlekey.currentState!.validate();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Email";
                    }
                  },
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.black,
                  ),
                  hintText: "Username",
                ),
                SizedBox(
                  height: 50,
                ),
                Commen_Text(
                  Color: Colors.grey,
                  FontSize: 16,
                  FontWeight: FontWeight.bold,
                  text: ' Password',
                ),
                SizedBox(
                  height: 10,
                ),
                Commen_TextFiled(
                  onchange: (value) {
                    globlekey.currentState!.validate();
                  },
                  validator: (value) {
                    final bool passwordValid = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                        .hasMatch(value!);

                    if (passwordValid) {
                      return null;
                    } else {
                      return "should contain upper,lower,digit and Special character and min 8 Char..";
                    }
                  },
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    icon: selected == true
                        ? Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                    onPressed: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                  ),
                  obscureText: selected,
                  hintText: "Password",
                ),
                SizedBox(
                  height: 150,
                ),
                Commen_buttons(
                  onTap: () {
                    if (globlekey.currentState!.validate()) {}
                  },
                  Color: Color(0xffC6AB59),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Commen_Text(
                          text: "Sign In",
                          Color: Colors.white,
                          FontSize: 20,
                          FontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Icon(
                          Icons.login,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Commen_Text(
                      Color: Colors.grey,
                      FontSize: 16,
                      FontWeight: FontWeight.bold,
                      text: 'Don\'t have an account?',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        if (globlekey.currentState!.validate()) {}
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sign_Up(),
                            ));
                      },
                      child: Commen_Text(
                        Color: Colors.black,
                        FontSize: 16,
                        FontWeight: FontWeight.bold,
                        text: 'Sign up',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Commen_buttons(
                  onTap: () {},
                  Color: Color(0xff3C79E6),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'assert/image/facbook.png',
                            color: Colors.white,
                            height: 22,
                            width: 22,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Commen_Text(
                          text: "Connect with Facebook",
                          Color: Colors.white,
                          FontSize: 18,
                          FontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
