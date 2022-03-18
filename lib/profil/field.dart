import 'package:flutter/material.dart';

class RoundedLinePress extends StatelessWidget {
  const RoundedLinePress({
    Key? key,
    this.text,
    this.icon,
    this.icons,
  }) : super(key: key);

  final String? text, icon;
  final Icon? icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xFF015D67),
        ),
        onPressed: () {},
        child: Row(
          children: [
            icons!,
            const SizedBox(width: 20),
            Expanded(child: Text(text!)),
          ],
        ),
      ),
    );
  }
}
