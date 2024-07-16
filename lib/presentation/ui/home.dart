import 'package:alhadith/presentation/stateManager/databaseController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/color_plate.dart';

class AlhadithDetailsPage extends StatelessWidget {
  const AlhadithDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HadithController controller = Get.put(HadithController());
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
        padding: EdgeInsets.all(16.0),
        child: Obx(() {
          if (controller.chapters.isEmpty &&
              controller.books.isEmpty &&
              controller.hadiths.isEmpty &&
              controller.sections.isEmpty) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView(
              children: [
                ...controller.chapters.map((chapter) => ListTile(
                  title: Text('Chapter: ${chapter.title}'),
                  onTap: () {
                    // Handle click event for chapter
                  },
                )).toList(),
                ...controller.books.map((book) => ListTile(
                  title: Text('Book: ${book.title}'),
                  onTap: () {
                    // Handle click event for book
                  },
                )).toList(),
                ...controller.hadiths.map((hadith) => ListTile(
                  title: Text('Hadith: ${hadith.ar}'),
                  onTap: () {
                    // Handle click event for hadith
                  },
                )).toList(),
                ...controller.sections.map((section) => ListTile(
                  title: Text('Section: ${section.title}'),
                  onTap: () {
                    // Handle click event for section
                  },
                )).toList(),
              ],
            );


          }
        }),

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