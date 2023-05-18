import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedGender = "Nam";
  DateTime? selectedDate;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(178, 0, 0, 1),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 130,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, bottom: 8),
                child: const Text(
                  "Chào mừng!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 36,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: const Text(
                  "Hãy cho chúng tôi biết thêm về bạn",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 69,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: RichText(
                                text: const TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Tên',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 36),
                              child: TextFormField(
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Trường bắt buộc!';
                                  } else if (value.length < 6) {
                                    return "Vui lòng nhập  họ tên tối thiểu 6 ký tự! ";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Họ và tên',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(173, 173, 173, 1)),
                                  ),
                                ),
                                cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: const Text('Số điện thoại',
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20, right: 36),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  hintText: '09012345678',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(173, 173, 173, 1)),
                                  ),
                                ),
                                cursorColor: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: RichText(
                                text: const TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Giới tính',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 140,
                                    child: RadioListTile(
                                      title: const Text('Nam'),
                                      value: 'Nam',
                                      groupValue: selectedGender,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedGender = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(148, 0, 0, 1),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    child: RadioListTile(
                                      title: const Text('Nữ'),
                                      value: 'Nữ',
                                      groupValue: selectedGender,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedGender = value.toString();
                                        });
                                      },
                                      activeColor:
                                          const Color.fromRGBO(148, 0, 0, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 22, right: 34),
                              child: const Divider(
                                color: Color.fromRGBO(173, 173, 173, 1),
                                thickness: 1,
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: const Text('Ngày tháng năm sinh',
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 36),
                              child: TextField(
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                    hintText: (selectedDate != null)
                                        ? DateFormat('dd/MM/yyyy')
                                            .format(selectedDate!)
                                        : 'ngày/tháng/năm',
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(173, 173, 173, 1)),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: const Icon(Icons.calendar_today),
                                      onPressed: () {
                                        _selectDate(context);
                                      },
                                    )),
                                cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(top: 48),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  primary: const Color.fromRGBO(178, 0, 0, 1),
                                  padding: const EdgeInsets.all(16),
                                ),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.done,
                                  size: 36,
                                  color: Color.fromRGBO(251, 239, 239, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
          Positioned(
              top: 216,
              left: 146,
              right: 146,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: const Color.fromRGBO(239, 241, 243, 1),
                  padding: const EdgeInsets.all(38),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  color: Color.fromRGBO(96, 96, 96, 1),
                  size: 32,
                ),
              )),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                  width: 125,
                  height: 125,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(251, 239, 239, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(125),
                    ),
                  ))),
          Positioned(
              top: 225,
              left: 28,
              child: Container(
                  width: 47,
                  height: 47,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(251, 239, 239, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(47),
                    ),
                  ))),
          Positioned(
              top: 208,
              left: -4,
              child: Container(
                  width: 17,
                  height: 17,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(251, 239, 239, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ))),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}
