import 'package:flutter/material.dart';
import 'package:payment_project/shared/components/constants.dart';

class RefCodeScreen extends StatelessWidget {
  const RefCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You Should Go To Any Market To Pay"),
              const SizedBox(height: 20),
              const Text("This is Ref Code"),
              const SizedBox(height: 20),
              Text(refCode ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
