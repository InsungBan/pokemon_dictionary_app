import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_dictionary_app/view/generation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController userIdEditingController;
  late TextEditingController passwordEditingController;

  @override
  void initState() {
    super.initState();
    userIdEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Image.asset(
                'images/monsterball.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: userIdEditingController,
                decoration: InputDecoration(
                  labelText: 'ID를 입력하시오'
                ),
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passwordEditingController,
                decoration: InputDecoration(
                  labelText: '비밀번호를 입력하시오'
                ),
                obscureText: true,
                maxLines: 1,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if(userIdEditingController.text.trim().isEmpty || passwordEditingController.text.trim().isEmpty) {
                  errorSnackBar();
                } else {
                  checkData();
                }
              },
              child: Text('Login')
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  // ----- Function -----
  void errorSnackBar() {
    Get.snackbar(
      '경고',
      'ID와 비밀번호를 입력하세요',
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }

  void checkSnackBar() {
    Get.snackbar(
      '경고',
      'ID나 비밀번호가 일치하지 않습니다.',
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }
  void checkData() {
    if(userIdEditingController.text.trim().isEmpty || passwordEditingController.text.trim().isEmpty) {
      errorSnackBar();
    } else {
      if(userIdEditingController.text.trim() == "pikachu" && passwordEditingController.text.trim() == "pikapika") {
        _showDialog();
      } else {
        checkSnackBar();
      }
    }
  }

  void _showDialog() {
    Get.defaultDialog(
      title: '로그인 완료',
      middleText: '환영합니다 ${userIdEditingController.text.trim()}님!',
      barrierDismissible: true, // false
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      actions: [
        // TextButton(onPressed: Get.to(다음경로), child: Text('Exit'))
        TextButton(
          onPressed: () => Get.to(() => Generation(), arguments: userIdEditingController.text.trim()), 
          child: Text('OK'),
        ),
      ]
    );
  }

}