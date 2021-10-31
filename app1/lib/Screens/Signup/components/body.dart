import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/Screens/Verify/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "मेरा आधार, मेरी पहचान",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize:20),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/aadhar.png",
              height: size.height * 0.35,
            ),
            SizedBox(height:50), 
           
            RoundedInputField(
              hintText: "OTP",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "VERIFY",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Verify();
                    },
                  ),
                );
              },
              color:Colors.orange, 
              textColor:Colors.black, 
            ),
            SizedBox(height: size.height * 0.03),
           
           
           
          ],
        ),
      ),
    );
  }
}
