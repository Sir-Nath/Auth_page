import 'package:auth_pages/components/already_have_an_account_check.dart';
import 'package:auth_pages/components/rounded_button.dart';
import 'package:auth_pages/components/rounded_input_field.dart';
import 'package:auth_pages/components/rounded_password_field.dart';
import 'package:auth_pages/constants.dart';
import 'package:auth_pages/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../social_icon.dart';
import 'background.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
              Text(
                'SIGNUP',
                style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
              ),
          SizedBox(height: size.height*0.03,),
          SvgPicture.asset('assets/icons/signup.svg',
          height: size.height * 0.35,),
          SizedBox(height: size.height*0.03,),
          RoundedInputField(hintText: 'Your Email', onChanged: (value){}),
          RoundedPasswordField(onChanged: (value){}),
          RoundedButton(text: 'SIGNUP', press: (){}),
          SizedBox(height: size.height*0.03,),
          AlreadyHaveAnAccountCheck(press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginScreen();
              }));
          }, login: false,),
          OrDivider(),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconName: 'assets/icons/facebook.svg',
                  press: (){},
                ),
                SocialIcon(
                  iconName: 'assets/icons/twitter.svg',
                  press: (){},
                ),
                SocialIcon(
                  iconName: 'assets/icons/google-plus.svg',
                  press: (){},
                ),
              ],
          )
      ],
    ),
            ),
          ),
       
    );
  }
}



