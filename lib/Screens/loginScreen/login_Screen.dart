import 'package:flutter/material.dart';
import 'package:login_screen/Screens/UI_block/custom_text_field.dart';
import 'package:login_screen/Screens/loginScreen/components/login_box.dart';
import 'package:login_screen/constants/device_size.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.teal.shade50,

      body: Stack(          //NOTE: used for image of chutki
        children: [

          Positioned(
            top: displayHeight(context)*0.12,
              left: displayWidth(context)*0.06,
              child:Image.asset('assets/chutki.png',height: displayHeight(context)*0.4,fit: BoxFit.cover,)
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

             Card(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                elevation: 20,
               child: Container(
                  padding: EdgeInsets.all(20),
                 height: displayHeight(context)*0.68,
                 width: displayWidth(context),
                 decoration: BoxDecoration(
                   color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                   ),
                 child: SingleChildScrollView(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                      Text('Log-in',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 39,
                        ),
                      ),
                       SizedBox(
                         height: 30,
                       ),
                       LoginBox(),

                     ],
                   ),
                 ),
               ),
             )
            ],
          ),
        ],
      ),
    );
  }
}
