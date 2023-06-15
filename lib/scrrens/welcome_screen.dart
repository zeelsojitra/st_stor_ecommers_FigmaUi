import 'package:flutter/material.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_buttons.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_text.dart';

import 'sign_in.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 80,
              right: -150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 160,
                    backgroundColor: Color(0xffC6AB59),
                  )
                ],
              ),
            ),
            Positioned(
              top: 340,
              right: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 130,
                    backgroundColor: Color(0xff8F92A1),
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 170,
                ),
                Image.asset(
                  'assert/image/welcome.png',
                  height: height * 0.33,
                  width: width,
                ),
                SizedBox(
                  height: 200,
                ),
                Commen_Text(
                  text: 'Welcome to STStore !',
                  Color: Colors.black,
                  FontSize: 24,
                  FontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20,
                ),
                Commen_Text(
                  text:
                      'With long experience in the audio industry, \n we create the best quality products',
                  FontWeight: FontWeight.w400,
                  FontSize: 18,
                  Color: Colors.black,
                ),
                SizedBox(
                  height: 30,
                ),
                Commen_buttons(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_in(),
                        ));
                  },
                  Color: Color(0xffC6AB59),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Commen_Text(
                          text: "Get Started",
                          Color: Colors.white,
                          FontSize: 20,
                          FontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 84,
                        ),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Colors.white,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
