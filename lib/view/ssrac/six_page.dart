import 'package:flutter/material.dart';

class SixPage extends StatefulWidget {
  const SixPage({super.key});

  @override
  State<SixPage> createState() => _SixPageState();
}

class _SixPageState extends State<SixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("6세대"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/ev.jpg",
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            const Text(
              "이벨타르\n"
              "No.717\n"
              "6세대를 대표하는 모기",
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
