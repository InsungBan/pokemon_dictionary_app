import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/view/generation.dart';

import 'register_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController userIdEditingController;   // 사용자 ID 입력 컨트롤러
  late TextEditingController passwordEditingController; // 비밀번호 입력 컨트롤러
  final box = GetStorage();                             // GetStrage 생성
  List<Map<String, String>> userIdList = [
    {'userId': 'pikachu', 'password': 'pikapika'},
    {'userId': 'insung', 'password': 'namgung'},
  ];                                                    // 사용자 ID 리스트

  @override
  void initState() {
    super.initState();
    userIdEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
    box.write('p_userId', "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            SizedBox(height: 30),
            TextButton(
              onPressed: () async {
                final result = await Get.to(() => RegisterPage(userIdList: userIdList));
                if (result != null) {
                  userIdList.add(result);
                  setState(() {});
                }
              },
              child: Text('Go to Register')
            ),
          ],
        ),
      ),
    );
  }

  // ----- Function -----
  // ID와 비밀번호 입력 여부 확인 후 경고 메시지 출력
  void errorSnackBar() {
    Get.snackbar(
      '경고',
      'ID와 비밀번호를 입력하세요',
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }

  // ID와 비밀번호 일치 여부 확인 후 경고 메시지 출력
  void checkSnackBar() {
    Get.snackbar(
      '경고',
      'ID나 비밀번호가 일치하지 않습니다.',
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }

  // ID 중복 체크 및 비밀번호 확인 체크 후 회원가입 처리
  void checkData() {
    if(userIdEditingController.text.trim().isEmpty || passwordEditingController.text.trim().isEmpty) {
      errorSnackBar();
    } else {
      bool userFound = false;
      for (var user in userIdList) {
        if (userIdEditingController.text.trim() == user['userId'] && passwordEditingController.text.trim() == user['password']) {
          userFound = true;
          _showDialog();
          break;
        }
      }
      if (!userFound) {
        checkSnackBar();
      }
    }
  }

  // 로그인 성공 시 다이얼로그 표시
  void _showDialog() {
    Get.defaultDialog(
      title: '로그인 완료',
      middleText: '환영합니다 ${userIdEditingController.text.trim()}님!',
      barrierDismissible: false,
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      actions: [
        TextButton(
          onPressed: () {
            box.write('p_userId', userIdEditingController.text.trim());
            userIdEditingController.text = "";
            passwordEditingController.text = "";
            Navigator.of(context).pop();
            Get.to(
              Generation(),
              transition: Transition.circularReveal,
              duration: Duration(seconds: 2)
            );
          },
          child: Text('OK'),
        ),
      ]
    );
  }
}