import 'package:audlabs/app/audlabs/widgets/audlab_about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AudlabsApp extends StatefulWidget {
  const AudlabsApp({Key? key}) : super(key: key);

  @override
  AudlabsAppState createState() => AudlabsAppState();
}

class AudlabsAppState extends State<AudlabsApp> {
  List images = [
    ['assets/images/stock/chemlab.jpg', 'Virtual Chemistry Lab'],
    ['assets/images/stock/chemlab2.jpg', 'Do Biology Simulations'],
    ['assets/images/stock/ps1.jpg', 'Augmented World'],
    ['assets/images/stock/phylab.jpg', 'Your Physics Zone'],
  ];
  @override
  Widget build(BuildContext context) {
    double side = MediaQuery.of(context).size.width / 8;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/stock/mp1.jpg'),
                fit: BoxFit.cover,
                opacity: 0.5,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              height: side * 0.8,
              width: side * 0.8,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () => Get.back(),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: side * 0.6,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const AudlabAbout(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var i in images) ...[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: const EdgeInsets.all(8),
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(i[0]),
                            fit: BoxFit.cover,
                            opacity: 0.75,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    i[1],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.urbanist(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ].animate().fadeIn(),
                        ),
                      ).animate().fadeIn().slideY(
                            curve: Curves.easeIn,
                            duration: const Duration(seconds: 1),
                            begin: 0.5,
                          ),
                      const SizedBox(width: 20)
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ],
      ),
    );
  }
}
