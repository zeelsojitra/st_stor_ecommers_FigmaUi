import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:st_stor_ecommers/commen_wiget/Commen_TextFiled.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_buttons.dart';
import 'package:st_stor_ecommers/commen_wiget/commen_text.dart';
import 'package:st_stor_ecommers/scrrens/otp_authantication.dart';

class Password_Recovery extends StatefulWidget {
  @override
  State<Password_Recovery> createState() => _Password_RecoveryState();
}

class _Password_RecoveryState extends State<Password_Recovery> {
  String countrycode = "91";
  String countryFlag = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
              text: 'Password Recovery',
            ),
            SizedBox(
              height: 10,
            ),
            Commen_Text(
              Color: Colors.grey,
              FontSize: 18,
              FontWeight: FontWeight.bold,
              text: 'Enter your Phone number to recover\nyour password',
            ),
            SizedBox(
              height: 70,
            ),
            Commen_Text(
              Color: Colors.grey,
              FontSize: 16,
              FontWeight: FontWeight.bold,
              text: 'Phone Number',
            ),
            SizedBox(
              height: 20,
            ),
            Commen_TextFiled(
              maxLength: 10,
              onchange: (value) {},
              keyboardType: TextInputType.number,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(),
                child: InkWell(
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      countryListTheme: CountryListThemeData(
                        flagSize: 25,
                        backgroundColor: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 16, color: Colors.blueGrey),
                        bottomSheetHeight: 500,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        inputDecoration: InputDecoration(
                          labelText: 'Search',
                          hintText: 'Start typing to search',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xFF8C98A8).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      showPhoneCode: true,
                      onSelect: (Country value) {
                        setState(() {
                          countrycode = value.phoneCode;
                          countryFlag = value.flagEmoji;
                        });
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Commen_Text(
                        text: "+${countrycode}",
                      ),
                      Commen_Text(text: countryFlag.isEmpty ? "" : countryFlag),
                    ],
                  ),
                ),
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
            )
          ],
        ),
      ),
    );
  }
}
