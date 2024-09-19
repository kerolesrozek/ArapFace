
import 'package:arapface/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.buttonName, this.isLoading=false, this.onTap,
  });
  final String buttonName;
 final bool isLoading;
 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 24),
          width: MediaQuery.of(context).size.width,
          child: Center(
              child:isLoading==false? Text(
            buttonName,
            style: AppStyles.textStyle22,
          ):CircularProgressIndicator()),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.lightBlue,
          ),
        ),
    );
  }
}
