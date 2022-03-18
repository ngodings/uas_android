import 'package:flutter/material.dart';

class CircularPict extends StatelessWidget {
  const CircularPict({
    Key? key,
    this.imagepath,
    this.icons,
  }) : super(key: key);
  final String? imagepath;
  final Icon? icons;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(imagepath!),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.white),
                    ),
                    primary: Colors.transparent,
                    backgroundColor: const Color(0xFFF5F6F9),
                  ),
                  onPressed: () {},
                  child: icons!),
            ),
          )
        ],
      ),
    );
  }
}
