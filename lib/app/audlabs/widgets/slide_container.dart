import 'package:flutter/material.dart';

class SlideContainer extends StatelessWidget {
  const SlideContainer({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/stock/adlb.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
