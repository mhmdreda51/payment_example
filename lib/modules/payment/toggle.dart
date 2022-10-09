import 'package:flutter/material.dart';
import 'package:payment_project/modules/payment/ref_code_screen.dart';
import 'package:payment_project/modules/payment/visa_cart_screen.dart';
import 'package:payment_project/shared/router.dart';
import 'package:payment_project/shared/style/colors.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => MagicRouter.navigateTo(VisaCartScreen()),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: defColor),
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage("assets/card.png")),
                        SizedBox(height: 30),
                        Text("Payment with Card"),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: InkWell(
                  onTap: () => MagicRouter.navigateTo(const RefCodeScreen()),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: defColor),
                    ),
                    width: double.infinity,
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/refcode.png"),
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text("Payment with Ref Code"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
