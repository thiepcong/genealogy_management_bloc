import 'package:flutter/material.dart';
import '../../../core/values/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 16.25,
          height: 21.57,
          child: SvgPicture.asset(
            "assets/images/tree.svg",
          ),
        ),
        title: const Text(
          "Danh sách gia tộc",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/scanqr.svg",
            ),
          )
        ],
        backgroundColor: AppColors.color_148_0_0_1,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/treehome.svg",
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/bag.svg",
              ),
              label: "bag"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/ring.svg",
              ),
              label: "Ring"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/personal.svg",
              ),
              label: "Personal")
        ],
        onTap: (int index) async {
          switch (index) {
            case 0:
              break;
            case 1:
              break;
            case 2:
              break;
            case 3:
              break;
          }
        },
      ),
      backgroundColor: const Color.fromRGBO(251, 239, 239, 1),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Center(
                child: const Text(
                  "Các gia tộc của bạn sẽ xuất hiện ở đây",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: const Text(
                  "Bạn có thể thêm cây gia phả cho gia tộc,\nghi nhớ ngày giỗ, ngày họp mặt\nvà nhiều hơn thế nữa.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(173, 173, 173, 1)),
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text("Tạo ngay",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.color_148_0_0_1,
                          ))),
                  const Text("hoặc"),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Tham gia vào gia phả",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.color_148_0_0_1,
                          ))),
                ],
              )
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 68,
        height: 68,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.color_178_0_0_1,
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
          mini: false,
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }
}
