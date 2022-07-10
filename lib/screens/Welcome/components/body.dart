import 'package:auth_pages/constants.dart';
import 'package:auth_pages/screens/Login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_button.dart';
import '../../SignUp/sign_up_screen.dart';
import 'backgorund.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Background(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME TO EDU',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height*0.03,),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: size.height * 0.45,
                ),
                SizedBox(height: size.height*0.05,),
                 RoundedButton(
                  text: 'LOGIN',
                  press: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                    })
                    );
                  },
                ),
                RoundedButton(
                  text: 'SIGNUP',
                  press: (){
    Navigator.push(context,MaterialPageRoute(builder: (context){
    return SignUpScreen();
    }));
    },

                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


