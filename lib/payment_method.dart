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

          child: SingleChildScrollView(
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
                      return 'Successfull';
            
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
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){},
                  highlightColor: Colors.blue.withOpacity(0.2), // Highlight on tap
                  splashColor: Colors.blue.withOpacity(0.2),
                  child: Container(
                    color: Color(0xFFD8EDF9),
                    height: 54,
                    width: 325,
                    child: ElevatedButton(onPressed: (){},

                        child:  Text('ADD Card +',style: TextStyle(fontSize: 16,color: Color(0xFF0D5EF9)),),
                              
                              
                              
                              
                              
                    ),
                  ),
                ),
            
                const Padding(
                  padding: EdgeInsets.fromLTRB(35.0, 20, 45.0, 8),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Other Methods',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,),)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 10, 45.0, 8),
                  child: InkWell(
                    onTap: (){},
                    highlightColor: Colors.blue.withOpacity(0.2), // Highlight on tap
                    splashColor: Colors.blue.withOpacity(0.2),
                    child: ListTile(
                      leading: Image.asset('images/cashapp.png'),
                      title: const Text('Cash Payment',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,
                          color: Color(0xFF181E22)),), // Title text
                      subtitle: const Text('Default Method',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,
                          color: Color(0xFF94979F)),),

                      onTap: () {

                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 10, 45.0, 8),
                  child: CustomPaymentListTile('Basket Total', '+ AED 32.00'),
                ),
            
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 10, 45.0, 8),
                  child: CustomPaymentListTile('Discount', '- AED 1.20'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 10, 45.0, 8),
                  child: CustomPaymentListTile('Total', '+ AED 30.80'),
                ),
              InkWell(
                onTap: (){},
                highlightColor: Colors.blue.withOpacity(0.1), // Highlight on tap
                splashColor: Colors.blue.withOpacity(0.1),
                child: Container(
                    height: MediaQuery.of(context).size.width*.5,
                    width: MediaQuery.of(context).size.width*.5,
                    child: Image.asset('images/order.png')),
              ),
            
            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
