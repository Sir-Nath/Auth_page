import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final VoidCallback press;
  final bool login;
  const AlreadyHaveAnAccountCheck({
    Key? key, required this.press, this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ? 'Don\'t have an Account?' : 'Already have an Account?',
          style: TextStyle(
              color: kPrimaryColor
          ),),
        GestureDetector(
          onTap: press,
          child: Text( login ?
          'Sign Up': 'Sign In',
            style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}