import 'package:flutter/material.dart';

class SevenPage extends StatefulWidget {
  const SevenPage({super.key});

  @override
  State<SevenPage> createState() => _SevenPageState();
}

class _SevenPageState extends State<SevenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("7세대"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/sol.jpg",
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            const Text(
              "솔가레오\n"
              "No.791\n"
              "7세대를 대표하는 전설의 사자",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

