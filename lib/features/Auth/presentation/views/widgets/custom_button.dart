
import 'package:arapface/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.buttonName,
  });
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          buttonName,
          style: AppStyles.textStyle22,
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.lightBlue,
        ),
      );
  }
}
