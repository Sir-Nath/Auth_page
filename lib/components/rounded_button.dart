import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final Color color, textColor;
  final String text;
  final VoidCallback press;
  const RoundedButton({
    Key? key,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
                backgroundColor: MaterialStateProperty.all(color)),
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}