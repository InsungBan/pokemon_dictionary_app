import 'package:flutter/material.dart';

class NinePage extends StatefulWidget {
  const NinePage({super.key});

  @override
  State<NinePage> createState() => _NinePageState();
}

class _NinePageState extends State<NinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("9세대"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/cash.jpg",
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            const Text(
              "타부자고\n"
              "No.1000\n"
              "9세대를 대표하는 전설의 포켓몬은 아니지만\n"
              "사실상 전설에 가까운 포켓몬이다.\n"
              "이놈은 부자만 키울 수 있다",
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
