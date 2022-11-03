import 'package:api_app/bottom_navigation.dart';
import 'package:api_app/themes/custom_curvepaitner.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisit = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.zero,
              child: TopBar(),
            ),
          ),
          Positioned(
            top: 80,
            left: 165,
            right: 160,
            child: Container(
              child: const Text(
                'Login',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  IntlPhoneField(
                    initialCountryCode: 'KH',
                    decoration: InputDecoration(
                      isDense: true, // Added this
                      contentPadding: const EdgeInsets.all(10.0),
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                    onChanged: (phone) {
                      debugPrint(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      debugPrint('Country changed to: ${country.name}');
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      obscureText: isVisit,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        labelText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        contentPadding:
                            const EdgeInsets.only(left: 10.0, right: 10.0),
                        suffixIcon: GestureDetector(
                          child: const Icon(Icons.visibility),
                          onTap: () {
                            setState(() {
                              isVisit = !isVisit;
                            });
                          },
                        ),
                      ),
                      validator: ((value) {
                        if (value!.trim().isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      }),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      minimumSize: const Size(200, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ButtonNavigation(),
                        ),
                      );
                    },
                    child: const Text('Login'),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(10.0), child: Text('Or')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Register/Sign Up'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CurvePainter(),
      child: Container(
        height: 300,
      ),
    );
  }
}
