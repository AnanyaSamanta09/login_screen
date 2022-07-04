import 'package:flutter/material.dart';
import '../../constants/device_size.dart';


class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscureText = true;

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
          Positioned(
            bottom: 0,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
              elevation: 20,
              child: Container(
                padding: EdgeInsets.all(35),
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
                      Text('Sign-Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 39,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),

                      Center(
                        child: MaterialButton(onPressed: (){},
                          elevation: 20,
                          color: Colors.blueGrey.shade100,
                          child: Icon(Icons.camera_enhance_sharp,color: Colors.black,size: 30),
                          padding: EdgeInsets.all(45.0),
                          shape: CircleBorder(),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      Text('Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      TextFormField(

                        decoration: InputDecoration(

                          hintText: "Your Name",

                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      TextFormField(

                        decoration: InputDecoration(

                          hintText: "Your email id",

                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Contact no.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      TextFormField(

                        decoration: InputDecoration(

                          hintText: "Your contact no.",

                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Text('Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      TextFormField(
                        obscureText: isObscureText, //NOTE: asking if obscuretext is present or not
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState((){
                                isObscureText = !isObscureText;
                              });
                            },
                            color: Colors.black,
                            icon: isObscureText?Icon(Icons.visibility):Icon(Icons.visibility_off),

                          ), //NOTE: for eye icon in password
                          hintText: 'Password',

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
