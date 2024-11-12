import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/account_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/messages_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/payment_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/uber_pass_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/your_tips_page.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColors,
      child: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 200,
                  color: AppColors.customBlackColors,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, MessagesScreen.messagesScreen);
                          },
                          child: Row(
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
                                    padding:
                                        const EdgeInsets.only(top: 4, left: 8),
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
                          ),
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
                    Navigator.pushNamed(context, YourTipsScreen.yourTipsScreen);
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
                    Navigator.pushNamed(context, PaymentScreen.paymentScreen);
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
                    Navigator.pushNamed(context, UberPassScreen.uberPassScreen);
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
                    Navigator.pushNamed(context, AccountScreen.accountScreen);
                  },
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Legal',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: const Color(0xffEDF6FF)),
                      ),
                      Text(
                        'v4.3712003',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: const Color(0xffEDF6FF)),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
