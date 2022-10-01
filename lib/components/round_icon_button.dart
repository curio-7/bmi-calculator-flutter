import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    @required this.icon,
    @required this.onPress,
    Key? key,
  }) : super(key: key);

  final IconData? icon;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      onLongPress: onPress,
      elevation: 6.0,
      fillColor: const Color(0xFF4c4f5e),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
