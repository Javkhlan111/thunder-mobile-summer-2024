import 'package:flutter/material.dart';

class PictureRow extends StatefulWidget {
  int orange;
  PictureRow({required this.orange});
  @override
  State<PictureRow> createState() => _PictureRowState();
}

class _PictureRowState extends State<PictureRow> {
  @override
  Widget build(BuildContext context) {
    // List to hold the Image and SizedBox widgets
    List<Widget> imageWidgets = [];

    for (int i = 0; i < widget.orange; i++) {  // Loop to add 5 images
      imageWidgets.add(Image.asset(
        "assets/images/orange.png",
        width: 25,
        height: 25,
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imageWidgets,
    );
  }
}

//import 'package:flutter/material.dart';
//
// class PictureRow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // List to hold the Image and SizedBox widgets
//     List<Widget> imageWidgets = [];
//
//     int index = 0;
//     while (index < 5) {  // Loop to add 5 images
//       imageWidgets.add(Image.asset(
//         "assets/images/orange.png",
//         width: 25,
//         height: 25,
//       ));
//
//       if (index < 4) {  // Add SizedBox only between images, not after the last one
//         imageWidgets.add(SizedBox(width: 5));
//       }
//
//       index++;
//     }
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: imageWidgets,
//     );
//   }
// }



// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children:
// [
//   Image.asset("assets/images/orange.png", width: 25, height: 25),
//   SizedBox(
//     width: 5,
//   ),
//   Image.asset("assets/images/orange.png", width: 25, height: 25),
//   SizedBox(
//     width: 5,
//   ),
//   Image.asset("assets/images/orange.png", width: 25, height: 25),
//   SizedBox(
//     width: 5,
//   ),
//   Image.asset("assets/images/orange.png", width: 25, height: 25),
//   SizedBox(
//     width: 5,
//   ),
//   Image.asset("assets/images/orange.png", width: 25, height: 25),
// ],
// ),