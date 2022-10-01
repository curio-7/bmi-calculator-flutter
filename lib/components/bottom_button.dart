import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.buttonTitle,
    @required this.onTap,
    Key? key,
  }) : super(key: key);

  final void Function()? onTap;
  final String? buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottonContainerColor,
        margin: const EdgeInsets.only(top: 15.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottonContainerHeight,
        child: Center(
          child: Text(
            buttonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
