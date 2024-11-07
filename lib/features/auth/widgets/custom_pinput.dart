import 'package:flutter/material.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';

class OTPInput extends StatefulWidget {
  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onOtpFieldChange(String value, int index) {
    if (value.isNotEmpty) {
      if (index < 3) {
        _focusNodes[index + 1].requestFocus(); // Move focus to next field
      } else {
        _focusNodes[index].unfocus(); // Unfocus last field
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) {
          return SizedBox(
            width: 50,
            child: TextFormField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: TextStyle(
                color: AppColors.white, // Set text color to red
                fontSize: 24, // Adjust font size as needed
              ),
              decoration: InputDecoration(
                counterText: "", // Hide the length counter
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2.0, color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2.0, color: Colors.blue),
                ),
              ),
              onChanged: (value) => _onOtpFieldChange(value, index),
            ),
          );
        }),
      ),
    );
  }
}
