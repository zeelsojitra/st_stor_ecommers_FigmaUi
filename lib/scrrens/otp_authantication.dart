import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_buttons.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_text.dart';

class Otp_authantication extends StatefulWidget {
  const Otp_authantication({Key? key}) : super(key: key);

  @override
  State<Otp_authantication> createState() => _Otp_authanticationState();
}

class _Otp_authanticationState extends State<Otp_authantication> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Commen_Text(
              Color: Colors.black,
              FontSize: 25,
              FontWeight: FontWeight.bold,
              text: 'OTP Authentication',
            ),
            SizedBox(
              height: 10,
            ),
            Commen_Text(
              Color: Colors.grey,
              FontSize: 18,
              FontWeight: FontWeight.bold,
              text: 'An authentication code has been\nsent to (+61) 0486935279',
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: VerificationCode(
                textStyle: TextStyle(fontSize: 25.0, color: Colors.red[900]),
                keyboardType: TextInputType.number,
                underlineColor: Colors.amber,
                length: 4,
                cursorColor: Colors.blue,
                clearAll: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'clear all',
                    style: TextStyle(
                        fontSize: 14.0,
                        decoration: TextDecoration.underline,
                        color: Colors.blue[700]),
                  ),
                ),
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Commen_buttons(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Otp_authantication(),
                    ));
              },
              Color: Color(0xffC6AB59),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Commen_Text(
                      text: "Continue",
                      Color: Colors.white,
                      FontSize: 20,
                      FontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 110,
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
      ),
    );
  }
}
