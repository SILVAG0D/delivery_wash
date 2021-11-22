import 'package:flutter/material.dart';

import '../size_config.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(70),
      child: TextButton(
        style: TextButton.styleFrom(
         
          primary: Colors.white,
          backgroundColor: Color(0xFFE95608),
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
