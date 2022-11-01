import 'package:api_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CustomButton(),
            CustomButton(),
            CustomButton(),
            CustomButton(),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}