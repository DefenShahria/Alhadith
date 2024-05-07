import 'package:flutter/material.dart';

import '../../data/color_plate.dart';

class AlhadithDetailsPage extends StatelessWidget {
  const AlhadithDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.primarycolor, // Set the app bar color
        title: Text('App Bar Title'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
                child: Icon(Icons.sort_by_alpha_rounded,color: Colors.white,)),
          ),
        ],
      ),
      body: Container(
        color: Appcolor.primarycolor,
        // Set body background color to primary color
        child: ClipPath(
          clipper: ReverseCurveClipper(),
          child: Container(
            color: Colors.white, // Background color of curved area
            height: 100, // Adjust the height of the curved area as needed
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                "Your Content Here",
                style: TextStyle(
                  color: Appcolor.primarycolor,
                  // Text color matches the app bar color
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ReverseCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 20); // Start at top left corner
    path.quadraticBezierTo(
        0, 0, 20, 0); // Curve to top left corner with radius 20
    path.lineTo(
        size.width - 20, 0); // Line to top right corner (minus the curve)
    path.quadraticBezierTo(size.width, 0, size.width,
        20); // Curve to top right corner with radius 20
    path.lineTo(size.width, size.height); // Line to bottom right corner
    path.lineTo(0, size.height); // Line to bottom left corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
