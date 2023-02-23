import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final Function() onTap;
  final Widget child;
  const CircleButtonWidget({Key? key, required this.onTap, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
