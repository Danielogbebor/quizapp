import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/quiz.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Learn flutter the fun way',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle:
                        const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: switchScreen,
                icon: const Icon(Icons.arrow_forward_ios),
                label: const Text('start quiz'))
          ],
        ),
      ),
    );
  }
}
