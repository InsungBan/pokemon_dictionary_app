import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
  const FourPage({super.key});

  @override
  State<FourPage> createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("4세대"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/pr.jpg",
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            const Text(
              "펄기아\n"
              "No.484\n"
              "4세대를 대표하는 공간의 GodGodGodGodGod",
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
