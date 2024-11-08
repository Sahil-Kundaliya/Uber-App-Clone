import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/home/cubits/home_cubit.dart';
import 'package:uber_app_ui_challenge/features/home/cubits/home_state.dart';
import 'package:uber_app_ui_challenge/features/home/pages/confirm_package_page.dart';

class SelectPackageScreen extends StatelessWidget {
  const SelectPackageScreen({super.key});

  static const String selectPackageScreen = '/SelectPackageScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      HomeCubit homeCubit = context.read<HomeCubit>();
      return Scaffold(
        backgroundColor: AppColors.backgroundColors,
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
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
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            children: [
                              const Icon(Icons.info,
                                  size: 15, color: Colors.grey),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  'What to send',
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
                    padding: const EdgeInsets.only(top: 40, bottom: 35),
                    child: Image.asset(AppImages.packageLogo),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Send packgaes with Connect',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 33,
                          color: const Color(0xffEDF6FF)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text(
                      'Get it delivered in the time it takes to drive there',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                          color: const Color(0xffEDF6FF)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      onTap: () async {
                        await homeCubit.changeSendValue(value: true);

                        Navigator.of(context).pushNamed(
                          ConfirmPackageScreen.confirmPackageScreen,
                        );
                      },
                      child: Container(
                        height: 58,
                        width: size.width,
                        decoration:
                            BoxDecoration(color: AppColors.customBlackColors),
                        child: Center(
                          child: Text(
                            'Send a package',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: const Color(0xffEDF6FF)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      onTap: () async {
                        await homeCubit.changeSendValue(value: false);
                        Navigator.of(context).pushNamed(
                          ConfirmPackageScreen.confirmPackageScreen,
                        );
                      },
                      child: Container(
                        height: 58,
                        width: size.width,
                        decoration:
                            BoxDecoration(color: AppColors.customBlackColors),
                        child: Center(
                          child: Text(
                            'Recieve a package',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: const Color(0xffEDF6FF)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
