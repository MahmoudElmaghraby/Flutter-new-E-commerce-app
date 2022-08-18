import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTab;

  const MainButton({
    Key? key,
    required this.text,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
        ),
        onPressed: onTab,
        child: Text(
          text,
        ),
      ),
    );
  }
}
