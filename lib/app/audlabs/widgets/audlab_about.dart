import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../configs/avatars.dart';

class AudlabAbout extends StatelessWidget {
  const AudlabAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Welcome to AudLabs",
            style: GoogleFonts.urbanist(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Eu deserunt dolore dolor excepteur magna aute ipsum pariatur. Ipsum occaecat est pariatur ad consectetur consequat nisi voluptate sunt cupidatat. Qui laboris tempor tempor anim officia proident adipisicing id sunt officia.',
            textAlign: TextAlign.justify,
            style: GoogleFonts.urbanist(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Join the millions of satisfied users',
                style: GoogleFonts.urbanist(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  for (var i = 0; i < 3; i++) ...[
                    CircleAvatar(
                      child: Image(
                        image: AssetImage(
                            Avatars().maleAvatars[i].path.toString()),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
