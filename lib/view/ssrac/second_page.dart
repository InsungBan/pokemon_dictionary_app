import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2세대"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/e.jpg",
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            const Text(
              "엔테이\n"
              "No.244\n"
              "2세대를 대표하는 전설의 강아지",
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

