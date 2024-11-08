import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/home/cubits/home_cubit.dart';
import 'package:uber_app_ui_challenge/features/home/cubits/home_state.dart';

class ConfirmPackageScreen extends StatelessWidget {
  ConfirmPackageScreen({super.key});

  static const String confirmPackageScreen = '/ConfirmPackageScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          HomeCubit homeCubit = context.read<HomeCubit>();
          print(
              'Package type: ${homeCubit.isSending ? "Sending" : "Receiving"}');
          return Container(
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Row(
                                children: [
                                  const Icon(Icons.people_alt_outlined,
                                      size: 15, color: Color(0xffEDF6FF)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Contacts',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xffEDF6FF)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'Who’s ${homeCubit.isSending ? 'sending ' : 'recieving '} the package?',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 33,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'The driver may contact the ${homeCubit.isSending ? 'sender ' : 'reciever'} to compete the delivery',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28, bottom: 20),
                        child: Text(
                          'Name',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 21.6,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter name',
                          // Your hint text here
                          hintStyle: TextStyle(color: Colors.grey),
                          // Customize hint text color if needed
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            // No border radius (sharp corners)
                            borderSide:
                                BorderSide(color: Colors.grey), // Grey border
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            // No border radius (sharp corners)
                            borderSide:
                                BorderSide(color: Colors.grey), // Grey border
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            // No border radius (sharp corners)
                            borderSide:
                                BorderSide(color: Colors.grey), // Grey border
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Phone number',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 21.6,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                                height: 31, width: 52, AppImages.authIndia),
                            Text(
                              '+91',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: const Color(0xffEDF6FF)),
                            ),
                            Text(
                              '81234 56789',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 35,
                    child: Container(
                      height: 58,
                      width: size.width,
                      decoration:
                          BoxDecoration(color: AppColors.customBlackColors),
                      child: Center(
                        child: Text(
                          'Confirm ${homeCubit.isSending ? 'sender ' : 'recipient'}',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
