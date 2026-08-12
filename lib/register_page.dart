import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  final List<Map<String, String>> userIdList;
  const RegisterPage({super.key, required this.userIdList});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Property
  late TextEditingController userIdEditingController;           // 사용자 ID 입력 컨트롤러
  late TextEditingController passwordEditingController;         // 비밀번호 입력 컨트롤러
  late TextEditingController confirmPasswordEditingController;  // 비밀번호 확인 입력 컨트롤러

  @override
  void initState() {
    super.initState();
    userIdEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
    confirmPasswordEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('회원가입')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: userIdEditingController,
                decoration: const InputDecoration(labelText: 'ID'),
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passwordEditingController,
                decoration: InputDecoration(labelText: '비밀번호'),
                obscureText: true,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: confirmPasswordEditingController,
                decoration: InputDecoration(labelText: '비밀번호 확인'),
                obscureText: true,
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (userIdEditingController.text.trim().isEmpty ||
                    passwordEditingController.text.trim().isEmpty ||
                    confirmPasswordEditingController.text.trim().isEmpty) {
                  errorSnackBar();
                } else {
                  checkData();
                }
              },
              child: Text('Register'),
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

  // ID 중복 체크 및 비밀번호 확인 체크 후 회원가입 처리
  void checkData() {
    if(userIdEditingController.text.trim().isEmpty || passwordEditingController.text.trim().isEmpty || confirmPasswordEditingController.text.trim().isEmpty) {
      errorSnackBar();
    } else if(passwordEditingController.text.trim() != confirmPasswordEditingController.text.trim()) {
      Get.snackbar(
        '경고',
        '비밀번호가 일치하지 않습니다.',
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      );
    } else if (widget.userIdList.any((user) => user['userId'] == userIdEditingController.text.trim())) {
      Get.snackbar(
        '경고',
        '이미 사용 중인 ID입니다.',
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      );
    } else {
      final newUser = {
        'userId': userIdEditingController.text.trim(),
        'password': passwordEditingController.text.trim(),
      };
      Get.defaultDialog(
        title: '성공',
        middleText: '회원가입이 완료되었습니다.',
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          TextButton(
            onPressed: () {
              Get.back(result: newUser);
              Navigator.of(context).pop(newUser);
            },
            child: Text('OK'),
          ),
        ],
      );
    }
  }
}
