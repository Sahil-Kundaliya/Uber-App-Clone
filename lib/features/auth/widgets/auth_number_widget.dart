import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_cubit.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_state.dart';

class AuthNumberWidget extends StatelessWidget {
  AuthNumberWidget({super.key});

  String currentValue = AppImages.authIndia;
  List<String> dropdownOptions = [
    AppImages.authIndia,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return Column(
        children: [
          Text(
            'Enter your mobile number',
            style: GoogleFonts.roboto(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: const Color(0xffEDF6FF),
            ),
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                DropdownButton<String>(
                  value: currentValue,
                  onChanged: (value) {
                    if (value != null) {
                      currentValue = value ?? '';
                    }
                  },
                  iconEnabledColor: AppColors.white,
                  dropdownColor: AppColors.white,
                  underline: const SizedBox(),
                  items: dropdownOptions
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                        height: 31,
                        width: 52,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(value))),
                      ),
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 8),
                  child: Text(
                    '+91',
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '81234 56789',
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff979797),
                      )),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: GestureDetector(
              onTap: () {
                context.read<AuthCubit>().changeAuthIndex(nextIndex: 1);
              },
              child: Row(
                children: [
                  Text(
                    'Or connect with social',
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary2Colors,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: AppColors.primary2Colors,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'By continuing you may recieve an SMS for verification. Message and data rates may apply.',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffDADADA),
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
