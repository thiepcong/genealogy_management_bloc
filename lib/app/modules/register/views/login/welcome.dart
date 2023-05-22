import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/values/app_colors.dart';
import '../../../../main_router.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 239, 239, 1),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            SvgPicture.asset("assets/images/anhbia.svg"),
            const Text(
              "Chào mừng bạn",
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.w500),
            ),
            const Text(
              "Mô tả mô tả mô tả",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 134,
            ),
            InkWell(
              onTap: () async {
                final nextState =
                    await context.router.push(const RegisterPhoneViewRoute());
                // if (nextState != null) {
                //   _nextState =
                //       nextState as RegisterInformationState?;
                // }
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 48, right: 48, top: 16, bottom: 16),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                child: const Text(
                  "Đăng nhập với số điện thoại",
                  style: TextStyle(
                      color: Color.fromRGBO(154, 15, 15, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 115,
                    child: const Divider(
                      thickness: 2,
                      color: Color.fromRGBO(89, 0, 0, 1),
                    )),
                const Text(
                  "Hoặc",
                  style: TextStyle(
                      color: Color.fromRGBO(47, 57, 75, 1), fontSize: 18),
                ),
                Container(
                    width: 115,
                    child: const Divider(
                      thickness: 2,
                      color: Color.fromRGBO(89, 0, 0, 1),
                    )),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: SvgPicture.asset("assets/images/apple.svg")),
                SvgPicture.asset("assets/images/facebook.svg"),
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: SvgPicture.asset("assets/images/zalo.svg")),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              selectionColor: const Color.fromRGBO(0, 0, 0, 1),
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Khi đăng nhập là bạn đã đồng ý với\n',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )),
                  TextSpan(
                    text: 'điều khoản',
                    style: TextStyle(color: AppColors.color_148_0_0_1),
                  ),
                  TextSpan(
                      text: ' của chúng tôi ',
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
