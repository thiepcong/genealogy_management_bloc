import 'package:flutter/material.dart';

class Confirm extends StatefulWidget {
  const Confirm({super.key});

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
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
              "Nhập mã xác minh gồm 6 chữ số đã gửi tới\n09012345678",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Container(
              width: 320,
              child: TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 15,
                ),
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
                cursorColor: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 52,
            ),
            const Text(
              "Bạn chưa nhận được mã?",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Yêu cầu mã mới",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(148, 0, 0, 1))),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 68,
        height: 68,
        child: FloatingActionButton(
          onPressed: () {
            _showdialog(context);
          },
          backgroundColor: const Color.fromRGBO(178, 0, 0, 1),
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
          mini: false,
          child: const Icon(
            Icons.arrow_forward_outlined,
            size: 40,
          ),
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
          "Bạn đã nhập mã không\nchính xác",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side:
                    BorderSide(color: Color.fromRGBO(0, 0, 0, 0.3), width: 2.0),
              ),
              primary: const Color.fromRGBO(255, 255, 255, 1),
              padding: const EdgeInsets.only(
                  left: 120, right: 120, top: 10, bottom: 10),
            ),
            child: const Text(
              "OK",
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
      );
    },
  );
}
