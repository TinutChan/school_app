import 'package:api_app/screens/login_screens.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late MaterialPageRoute routeto;
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
      (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1F40),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: const Image(
          image: AssetImage('assets/images/Splash-Screen-1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
