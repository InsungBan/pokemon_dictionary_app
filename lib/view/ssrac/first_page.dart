import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1세대"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/f.jpg",
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            const Text(
              "프리져\n"
              "No.144\n"
              "1세대를 대표하는 전설의 조류",
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
