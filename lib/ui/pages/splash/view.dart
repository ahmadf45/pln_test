import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pln_test/infrastructures/misc/pages.dart';
import 'package:pln_test/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Lottie.asset('lib/ui/assets/animations/todo2.json'),
            SizedBox(
              height: 30,
            ),
            Text(
              'To-Do List',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This productive tool is designed to help\nyou better manage your task \nproject-wise conveniently!',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, Pages.home);
              },
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: PLNTheme.lightScheme().tertiary,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  "Let's Start",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
