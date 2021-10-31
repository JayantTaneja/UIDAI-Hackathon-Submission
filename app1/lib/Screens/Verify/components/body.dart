import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
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
            Image.asset(
              "assets/icons/aadhar.png",
              height: size.height * 0.40,
            ),
            
            RoundedButton(
              text: "UPDATE ADDRESS",
              press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return x();
                //     },
                //   ),
                // );
              },
              color: Colors.orange,
              textColor: Colors.black,
            ),
            SizedBox(height:20), 
            Text("PREVIOUS UPDATE HISTORY", style:TextStyle(fontWeight:FontWeight.bold, fontSize:18, )),
            SizedBox(height:10), 
            Column(
              children: [
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 10),
                //   width: size.width * 0.8,
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(29),
                //     child: 
                // 
                Container(width:340, 
                  child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [Row(children: [Text("Previous", style:TextStyle(fontWeight:FontWeight.bold, )), Text(" - 2243 Sector-28, Faridabad"), ], ), 
                            SizedBox(height:10), Row(children: [Text("Updated", style:TextStyle(fontWeight:FontWeight.bold, )), Text(" - 1427 Sector-28, Faridabad"), ], ), SizedBox(height:10), Row(children: [Text("Approval Status", style:TextStyle(fontWeight:FontWeight.bold, )), Text(" - ✔"), ], ), ]
                          ),
                        ),
                      ),
                ),
                     Container(width:340, 
                       child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [Row(children: [Text("Previous", style:TextStyle(fontWeight:FontWeight.bold, )), Text(" - 1427 Sector-28, Faridabad"), ], ), 
                            SizedBox(height:10), Row(children: [Text("Updated", style:TextStyle(fontWeight:FontWeight.bold, )), Text(" - 1021 Sector-24, Faridabad"), ], ), SizedBox(height:10), Row(children: [Text("Approval Status", style:TextStyle(fontWeight:FontWeight.bold, )), Text(" - ❌"), ], ),SizedBox(height:10), 
                            Row(children: [Text("Remarks", style:TextStyle(fontWeight:FontWeight.bold, )), Text(" - Locations don't match."), ], ) 
                            ]
                          ),
                        ),
                    ),
                     ),
                     
                  
                
              ],
            ),
            
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
