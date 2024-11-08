import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColors,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200,
              color: AppColors.customBlackColors,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 33,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person,
                              size: 55, color: AppColors.backgroundColors),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Dot Phasor',
                            style: GoogleFonts.roboto(
                              color: const Color(0xffEDF6FF),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Messages',
                              style: GoogleFonts.roboto(
                                color: const Color(0xffEDF6FF),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4, left: 8),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: AppColors.primary2Colors,
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xffEDF6FF),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Your Trips',
                style: GoogleFonts.roboto(
                    fontSize: 20, color: const Color(0xffEDF6FF)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Payment',
                style: GoogleFonts.roboto(
                    fontSize: 20, color: const Color(0xffEDF6FF)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Uber Pass',
                style: GoogleFonts.roboto(
                    fontSize: 20, color: const Color(0xffEDF6FF)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: GoogleFonts.roboto(
                    fontSize: 20, color: const Color(0xffEDF6FF)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
                child: Row(
              children: [Text('data')],
            ))
          ],
        ),
      ),
    );
  }
}
