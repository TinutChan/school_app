import 'package:api_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          CustomButton(
            borderSidewidth: 2,
            borderWidthColor: Colors.grey,
            borderstyle: BorderStyle.solid,
            bgcolor: Colors.green,
            icons: Icons.home,
            label: 'home',
            onPressed: () {
              debugPrint('==============hello=============');
            },
          ),
          const CustomButton(
            borderSidewidth: 2,
            borderWidthColor: Colors.grey,
            borderstyle: BorderStyle.solid,
          ),
          const CustomButton(
            borderSidewidth: 2,
            borderWidthColor: Colors.grey,
            borderstyle: BorderStyle.solid,
          ),
          const CustomButton(
            borderSidewidth: 2,
            borderWidthColor: Colors.grey,
            borderstyle: BorderStyle.solid,
          ),
          const CustomButton(
            borderSidewidth: 2,
            borderWidthColor: Colors.grey,
            borderstyle: BorderStyle.solid,
          ),
        ],
      ),
    );
  }
}
