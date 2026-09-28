import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'home_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verify OTP',
                style: AppTextStyles.heading,
              ),
              const SizedBox(height: 12),
              Text(
                'Enter the OTP sent to your phone number.',
                style: AppTextStyles.subHeading,
              ),
              const SizedBox(height: 32),
              CustomTextField(
                label: 'OTP',
                hint: 'Enter 6-digit OTP',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24),
              CustomButton(
                text: 'VERIFY OTP',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
