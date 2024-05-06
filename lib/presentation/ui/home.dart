import 'package:alhadith/data/color_plate.dart';
import 'package:flutter/material.dart';

class Alhadith_DetailsPage extends StatefulWidget {
  const Alhadith_DetailsPage({super.key});

  @override
  State<Alhadith_DetailsPage> createState() => _Alhadith_DetailsPageState();
}

class _Alhadith_DetailsPageState extends State<Alhadith_DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.primarycolor,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white
              ),
              borderRadius: BorderRadius.circular(8)
            ),
              child: Icon(
            Icons.sort_by_alpha_outlined,
            color: Colors.white,
          )),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
        ),
      ),
    );
  }
}
