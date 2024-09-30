import 'package:flutter/material.dart';

import 'widgets.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final String emailPattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  final String phonePattern = r'^\d{10}$';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(35.0, 20, 8, 8),
            child: CustomAppBar('Payment Method'),
          ),
        ),
        body: Form(
          key: _formKey,

          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35.0, 10, 45.0, 8),
                child: CustomPaymentTextField(
                    hintText: 'example@gmail.com',
                    controller:emailController,
                    image:  'images/paypal.png',
                  keyboardType: TextInputType.emailAddress,

                  validator: (value ) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email'; // Error message for empty field
                    } else if (!RegExp(emailPattern).hasMatch(value)) {
                      return 'Please enter a valid email'; // Error message for invalid email format
                    }
                    return null;

                  },


                ),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35.0, 10, 45.0, 8),
                child: CustomPaymentTextField(
                    hintText: '********598',
                    image: 'images/mastercard.png',
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email'; // Error message for empty field
                      } else if (!RegExp(phonePattern).hasMatch(value)) {
                        return 'Please enter a 10-digit number'; // Error message for invalid email format
                      }
                      return null;

                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
