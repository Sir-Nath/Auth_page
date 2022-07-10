import 'package:auth_pages/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: InputBorder.none,
          icon: Icon(Icons.person,
            color: kPrimaryColor,),
          suffixIcon: Icon(Icons.visibility,
            color: kPrimaryColor,)
      ),
    ));
  }
}