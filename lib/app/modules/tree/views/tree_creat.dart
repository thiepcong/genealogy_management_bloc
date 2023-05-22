import 'package:flutter/material.dart';
import '../../../core/values/app_colors.dart';
import 'package:intl/intl.dart';

class TreeCreate extends StatefulWidget {
  const TreeCreate({super.key});

  @override
  State<TreeCreate> createState() => _TreeCreateState();
}

class _TreeCreateState extends State<TreeCreate> {
  String selectedGender = "Nam";
  DateTime? selectedDate;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.color_251_239_239_1,
          ),
          child: IconButton(
            color: AppColors.color_178_0_0_1,
            iconSize: 40,
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_outlined),
          ),
        ),
        title: const Text(
          "Danh sách gia tộc",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(245, 245, 245, 1),
            ),
            child: IconButton(
              color: Color.fromRGBO(194, 194, 194, 1),
              iconSize: 40,
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_outlined),
            ),
          ),
        ],
        backgroundColor: AppColors.color_148_0_0_1,
      ),
      backgroundColor: const Color.fromRGBO(251, 239, 239, 1),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 102,
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
                                      text: 'Tên gia phả',
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
                                  hintText: 'Nhập tên dòng họ',
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
                              child: const Text('Giả sử dòng họ',
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
                                  hintText: 'Nhập đôi nét về dòng họ của bạn',
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
                              child: const Text('Địa chỉ',
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
                                        : 'Chọn Tỉnh/Thành',
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(173, 173, 173, 1)),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: const Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        _selectDate(context);
                                      },
                                    )),
                                cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
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
                                        : 'Chọn Quận/Huyện',
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(173, 173, 173, 1)),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: const Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        _selectDate(context);
                                      },
                                    )),
                                cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: const Text(
                                  'Quan hệ của bạn với gia tộc này',
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
                                  hintText: 'Nhà nội, Nhà ngoại, Nhà vợ',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(173, 173, 173, 1)),
                                  ),
                                ),
                                cursorColor: Color.fromRGBO(0, 0, 0, 1),
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
              top: 48,
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
                  size: 36,
                ),
              )),
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
