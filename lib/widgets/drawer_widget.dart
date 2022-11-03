import 'package:api_app/screens/login_screens.dart';
import 'package:api_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 100,
        decoration: const BoxDecoration(
          color: Color(0xff004b23),
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.inner,
              blurRadius: 10,
              offset: Offset(0, 1),
              color: Color(0xff949b96),
              spreadRadius: 0.5,
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Image(
                  height: 50,
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 20),
              child: Text('Welcome back Waynodene Ross!'),
            ),
            Expanded(
              flex: 5,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  CustomButton(
                    borderSidewidth: 2,
                    borderstyle: BorderStyle.solid,
                    borderWidthColor: const Color(0xffdee2e6),
                    bgcolor: const Color(0xffffffff),
                    alignment: Alignment.centerLeft,
                    size: 0,
                    sizes: const Size(double.infinity, 60),
                    icons: Icons.home,
                    iconColors: const Color(0xff008000),
                    labelColors: const Color(0xff008000),
                    label: 'Home',
                    onPressed: (() {}),
                  ),
                  CustomButton(
                    borderSidewidth: 2,
                    borderstyle: BorderStyle.solid,
                    borderWidthColor: const Color(0xffdee2e6),
                    bgcolor: const Color(0xffffffff),
                    alignment: Alignment.centerLeft,
                    size: 0,
                    sizes: const Size(double.infinity, 60),
                    icons: Icons.notifications,
                    iconColors: const Color(0xff008000),
                    labelColors: const Color(0xff008000),
                    label: 'Notifications',
                    onPressed: (() {}),
                  ),
                  CustomButton(
                    borderSidewidth: 2,
                    borderstyle: BorderStyle.solid,
                    borderWidthColor: const Color(0xffdee2e6),
                    bgcolor: const Color(0xffffffff),
                    alignment: Alignment.centerLeft,
                    size: 0,
                    sizes: const Size(double.infinity, 60),
                    icons: Icons.star,
                    iconColors: const Color(0xff008000),
                    labelColors: const Color(0xff008000),
                    label: 'New Feed',
                    onPressed: (() {}),
                  ),
                  CustomButton(
                    borderSidewidth: 2,
                    borderstyle: BorderStyle.solid,
                    borderWidthColor: const Color(0xffdee2e6),
                    bgcolor: const Color(0xffffffff),
                    alignment: Alignment.centerLeft,
                    size: 0,
                    sizes: const Size(double.infinity, 60),
                    icons: Icons.mail,
                    iconColors: const Color(0xff008000),
                    labelColors: const Color(0xff008000),
                    label: 'Messages',
                    onPressed: (() {}),
                  ),
                  CustomButton(
                    borderSidewidth: 2,
                    borderstyle: BorderStyle.solid,
                    borderWidthColor: const Color(0xffdee2e6),
                    bgcolor: const Color(0xffffffff),
                    alignment: Alignment.centerLeft,
                    size: 0,
                    sizes: const Size(double.infinity, 60),
                    icons: Icons.group,
                    iconColors: const Color(0xff008000),
                    labelColors: const Color(0xff008000),
                    label: 'Friends',
                    onPressed: (() {}),
                  ),
                  CustomButton(
                    borderSidewidth: 2,
                    borderstyle: BorderStyle.solid,
                    borderWidthColor: const Color(0xffdee2e6),
                    bgcolor: const Color(0xffffffff),
                    alignment: Alignment.centerLeft,
                    size: 0,
                    sizes: const Size(double.infinity, 60),
                    icons: Icons.groups,
                    iconColors: const Color(0xff008000),
                    labelColors: const Color(0xff008000),
                    label: 'Groups',
                    onPressed: (() {}),
                  ),
                  CustomButton(
                    borderSidewidth: 2,
                    borderstyle: BorderStyle.solid,
                    borderWidthColor: const Color(0xffdee2e6),
                    bgcolor: const Color(0xffffffff),
                    alignment: Alignment.centerLeft,
                    size: 0,
                    sizes: const Size(double.infinity, 60),
                    icons: Icons.settings,
                    iconColors: const Color(0xff008000),
                    labelColors: const Color(0xff008000),
                    label: 'Settings',
                    onPressed: (() {}),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.inner,
                      blurRadius: 8,
                      offset: Offset(1, 0),
                      color: Color(0xff949b96),
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff38b000),
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.logout),
                    label: const Text('LOGOUT'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
