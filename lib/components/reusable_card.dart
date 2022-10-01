import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    @required this.colour,
    this.cardChild,
    this.onPress,
    Key? key,
  }) : super(key: key);

  final Widget? cardChild;
  final Color? colour;
  final void Function()?
      onPress; //we can replace void Function()? with VoidCallBack?

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
