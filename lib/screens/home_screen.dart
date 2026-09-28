import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agnize'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: AppTextStyles.heading,
              ),
              const SizedBox(height: 12),
              Text(
                'You are successfully logged in.',
                style: AppTextStyles.subHeading,
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: 'LOGOUT',
                onPressed: () {
                  print('Logout pressed');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
