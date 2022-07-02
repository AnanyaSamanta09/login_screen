import 'package:flutter/material.dart';
import 'package:login_screen/Screens/UI_block/custom_text_field.dart';
import 'package:login_screen/constants/device_size.dart';
class LoginBox extends StatelessWidget {
  const LoginBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 21),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),
            ),
            CustomTextField(hintText: 'Your email id'),
            SizedBox(
              height: 14,
            ),
            Text('Password',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),
            ),
            CustomTextField(hintText: 'Password',suffix_icon: Icon(Icons.remove_red_eye),),
          SizedBox(
            height: 10,
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Forget Password?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              ),

            ],
          ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: MaterialButton(onPressed:() {

              },
                color: Colors.black,
                  height: displayHeight(context)*0.07,
                  minWidth: displayWidth(context)*0.80,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                ),
                child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    letterSpacing: 2.2
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('Don`t have an account ?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Text('Sign-up',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider(color: Colors.black),
                ),
                Text('Or login with',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),

                Expanded(child: Divider(color: Colors.black),
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed: (){},
                elevation: 20,
                color: Colors.white,
                child: Image.asset('assets/gmail.jpg',
                  width: displayWidth(context)*0.078,
                  height: displayHeight(context)*0.035,
                  fit: BoxFit.cover,
                ),
                splashColor: Colors.blueGrey,
                padding: EdgeInsets.all(13.0),
                shape: CircleBorder(),
              ),
              MaterialButton(onPressed: (){},
                elevation: 20,
                color: Colors.white70,
                textColor: Colors.blue.shade800,
                child: Image.asset('assets/facebook.jpg',
                  width: displayWidth(context)*0.08,
                  height: displayHeight(context)*0.035,
                  fit: BoxFit.cover,
                ),
                splashColor: Colors.blueGrey,
                padding: EdgeInsets.all(13.0),
                shape: CircleBorder(),
              )
            ],
          ),
          ],
      ),

    );
  }
}
