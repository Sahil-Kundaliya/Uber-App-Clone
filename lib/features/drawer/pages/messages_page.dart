import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  static const String messagesScreen = '/MessagesScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.customBlackColors,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 8, bottom: 25),
            child: Text(
              'Messages',
              style: GoogleFonts.roboto(
                  fontSize: 48,
                  fontWeight: FontWeight.w200,
                  color: const Color(0xffEDF6FF)),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(color: AppColors.backgroundColors),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset(
                    AppImages.inboxMessage,
                    height: 195,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'You are all up to date!',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffEDF6FF)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                  child: Text(
                    'No new messages available at the moment, come back soon to discover new offers',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xffEDF6FF)),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
