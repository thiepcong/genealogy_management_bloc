import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: const Color.fromRGBO(251, 239, 239, 1),
                padding: const EdgeInsets.all(16),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_back_outlined,
                size: 46,
                color: Color.fromRGBO(148, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Nhập số điện thoại di động",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Container(
              width: 320,
              child: TextField(
                keyboardType: TextInputType.number,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  hintText: 'Number',
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(148, 0, 0, 1)),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.clear,
                      color: Color.fromRGBO(148, 0, 0, 1),
                    ),
                    onPressed: () {},
                  ),
                ),
                cursorColor: Color.fromRGBO(148, 0, 0, 1),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 160,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Gửi mã xác nhận",
              style: TextStyle(
                  color: Color.fromRGBO(148, 0, 0, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              width: 68,
              height: 68,
              child: FloatingActionButton(
                onPressed: () {
                  _showdialog(context);
                },
                backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
                foregroundColor: const Color.fromRGBO(194, 194, 194, 1),
                mini: false,
                child: const Icon(
                  Icons.arrow_forward_outlined,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Future<void> _showdialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          "09012345678",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        content: const Text(
          "Chúng tôi sẽ gửi mã xác mình\nđến số này qua SMS",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(148, 0, 0, 1),
                  padding: const EdgeInsets.only(
                      left: 120, right: 120, top: 10, bottom: 10),
                ),
                child: const Text(
                  "Gửi",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(208, 213, 221, 1),
                  padding: const EdgeInsets.only(
                      left: 120, right: 120, top: 10, bottom: 10),
                ),
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromRGBO(52, 64, 84, 1)),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}
