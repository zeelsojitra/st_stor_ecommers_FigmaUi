import 'package:flutter/material.dart';
import 'package:st_stor_ecommers/commen_wiget/Commen_TextFiled.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_buttons.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_text.dart';
import 'package:st_stor_ecommers/scrrens/password_Recovery_screen.dart';
import 'package:st_stor_ecommers/scrrens/sign_in.dart';

class Sign_Up extends StatefulWidget {
  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool checkbox = false;
  final gloablekey = GlobalKey<FormState>();
  final phonenumber = TextEditingController();
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: gloablekey,
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
                  text: 'Getting Started',
                ),
                SizedBox(
                  height: 10,
                ),
                Commen_Text(
                  Color: Colors.grey,
                  FontSize: 18,
                  FontWeight: FontWeight.bold,
                  text: 'Create an account to continue!',
                ),
                SizedBox(
                  height: 70,
                ),
                Commen_Text(
                  Color: Colors.grey,
                  FontSize: 16,
                  FontWeight: FontWeight.bold,
                  text: 'Email',
                ),
                SizedBox(
                  height: 20,
                ),
                Commen_TextFiled(
                  onchange: (value) {
                    gloablekey.currentState!.validate();
                  },
                  validator: (value) {
                    final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if (emailValid) {
                      return null;
                    } else {
                      return "Please enter valid Email Id";
                    }
                  },
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  hintText: "Email",
                ),
                SizedBox(
                  height: 30,
                ),
                Commen_Text(
                  Color: Colors.grey,
                  FontSize: 16,
                  FontWeight: FontWeight.bold,
                  text: ' UserName',
                ),
                SizedBox(
                  height: 10,
                ),
                Commen_TextFiled(
                  controller: phonenumber,
                  onchange: (value) {
                    gloablekey.currentState!.validate();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Plz Enter Username";
                    }
                  },
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  suffixIcon: phonenumber.text.length == 10
                      ? Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 20,
                        )
                      : SizedBox(),
                  obscureText: selected,
                  hintText: "UserName",
                ),
                SizedBox(
                  height: 30,
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
                    gloablekey.currentState!.validate();
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
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkbox,
                      onChanged: (value) {
                        setState(() {
                          checkbox = !checkbox;
                        });
                      },
                    ),
                    Commen_Text(
                      text:
                          "By creating an account, you agree to our\nTerm & Conditions",
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Commen_buttons(
                  onTap: () {
                    if (gloablekey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Password_Recovery(),
                          ));
                    }
                  },
                  Color: Color(0xffC6AB59),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Commen_Text(
                          text: "Sign Up",
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
                  height: 10,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sign_in(),
                            ));
                      },
                      child: Commen_Text(
                        Color: Colors.black,
                        FontSize: 16,
                        FontWeight: FontWeight.bold,
                        text: 'Sign In',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Commen_buttons(
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
