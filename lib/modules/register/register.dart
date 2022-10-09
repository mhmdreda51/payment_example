import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_project/modules/payment/toggle.dart';
import 'package:payment_project/shared/components/components.dart';
import 'package:payment_project/shared/style/colors.dart';

import '../../shared/router.dart';
import '../payment/cubit/payment_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          final cubit = PaymentCubit.get(context);
          if (state is PaymentSuccess) {
            cubit.getOrderId(price: cubit.priseCon.text);
          }
          if (state is PaymentGetOrderIdSuccess) {
            cubit.getFinalCardToken(
              price: cubit.priseCon.text,
              phone: cubit.phoneCon.text,
              email: cubit.emailCon.text,
              firstName: cubit.firstNameCon.text,
              lastName: cubit.lastNameCon.text,
            );
            cubit.getFinalKioskToken(
              price: cubit.priseCon.text,
              phone: cubit.phoneCon.text,
              email: cubit.emailCon.text,
              firstName: cubit.firstNameCon.text,
              lastName: cubit.lastNameCon.text,
            );
          }
          if (state is PaymentKioskRequestTokenSuccess ||
              state is PaymentCardRequestTokenSuccess) {
            cubit.getRefCode();
          }
          if (state is PaymentRefCodeSuccess) {
            MagicRouter.navigateTo(const ToggleScreen());
          }
        },
        builder: (context, state) {
          final cubit = PaymentCubit.get(context);
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: AppBar(
                backgroundColor: defColor,
                title: const Text("Payment Integration"),
              ),
              body: Form(
                key: cubit.formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultTextFormField(
                          controller: cubit.firstNameCon,
                          type: TextInputType.name,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "please enter your First Name";
                            }
                            return null;
                          },
                          label: "First Name",
                          prefix: Icons.person,
                        ),
                        const SizedBox(height: 20.0),
                        defaultTextFormField(
                          controller: cubit.lastNameCon,
                          type: TextInputType.name,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "please enter your last Name";
                            }
                            return null;
                          },
                          label: "last Name",
                          prefix: Icons.person,
                        ),
                        const SizedBox(height: 20.0),
                        defaultTextFormField(
                          controller: cubit.emailCon,
                          type: TextInputType.name,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "please enter your Email";
                            }
                            return null;
                          },
                          label: "Email",
                          prefix: Icons.email,
                        ),
                        const SizedBox(height: 20.0),
                        defaultTextFormField(
                          controller: cubit.phoneCon,
                          type: TextInputType.name,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "please enter your phone";
                            }
                            return null;
                          },
                          label: "phone",
                          prefix: Icons.phone,
                        ),
                        const SizedBox(height: 20.0),
                        defaultTextFormField(
                          controller: cubit.priseCon,
                          type: TextInputType.name,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "please enter your price";
                            }
                            return null;
                          },
                          label: "price",
                          prefix: Icons.price_change,
                        ),
                        const SizedBox(height: 20.0),
                        defaultButton(
                          function: () {
                            if (cubit.formKey.currentState!.validate()) {
                              cubit.getFirstToken(
                                price: cubit.priseCon.text,
                                phone: cubit.phoneCon.text,
                                email: cubit.emailCon.text,
                                firstName: cubit.firstNameCon.text,
                                lastName: cubit.lastNameCon.text,
                              );
                            }
                          },
                          text: "Go To Pay",
                          radius: 12,
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
