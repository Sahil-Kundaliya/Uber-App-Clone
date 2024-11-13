import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static String accountScreen = '/AccountScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.customBlackColors,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 8, bottom: 20),
                child: Text(
                  'Account Settings',
                  style: GoogleFonts.roboto(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xffEDF6FF)),
                ),
              ),
              Expanded(
                  child: Container(
                decoration:
                    const BoxDecoration(color: AppColors.backgroundColors),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: CircleAvatar(
                                radius: 35.5,
                                backgroundColor: Colors.grey,
                                child: const Icon(
                                  Icons.person,
                                  size: 60,
                                  color: AppColors.backgroundColors,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dot Phasor',
                                  style: GoogleFonts.roboto(
                                      fontSize: 21.5,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffEDF6FF)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    '+91 81234 56789',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffEDF6FF)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Favorites',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Add Home',
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          children: [
                            Icon(
                              Icons.work,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Add Work',
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          'More Saved Places',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary2Colors),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28),
                        child: Text('Privacy', style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffEDF6FF)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text('Manage the data you share with us', style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey)),),
                         Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text('Security', style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffEDF6FF)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text('Controlyour account security with 2-step verification', style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey)),),
                        Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text('Sign Out', style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffEDF6FF)),),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
