import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool isObsecure = true;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(

          children: [

            SvgPicture.asset('images/app_logo.svg'),
            Text("Sing up your account"),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  Text("Emails"),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: Color(0xff0FDA48)),


                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xff0FDA48))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Color(0xff0FDA48))),

                    ),


                    keyboardType: TextInputType.emailAddress,

                    validator: (value) {
                      // Check if this field is empty
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }

                      // using regular expression
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }

                      // the email is valid
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Password"),
                  TextFormField(

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is empty";
                      }
                      if (value.length < 4) {
                        return "Password is too short";
                      }
                      if (value.length > 10) {
                        return "Password is too long";
                      }
                    },
                    maxLines: 1,
                    obscureText: isObsecure,
                    obscuringCharacter: "*",
                    controller: passwordController,
                    decoration: InputDecoration(

                      //prefix: Icon(Icons.email),

                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon: Icon(isObsecure == false
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      fillColor: Colors.blue[100],
                      filled: true,
                      hintText: "**************",
                      labelStyle: TextStyle(color: Color(0xff0FDA48)),
                      hintStyle: TextStyle(color: Color(0xff0FDA48)),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xff0FDA48))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Color(0xff0FDA48))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Okay");

                        } else {
                          print("Something is wrong");
                        }
                      },
                      child: Text("Submit"))
                ],
              ),
            ),


          ],
        ),

      ),
    );
  }
}

class CustomeTextField extends StatelessWidget {
  CustomeTextField(
      {this.hintText,
        this.keyboardType,
        this.controller,
        this.labelText,
        this.validator,
        this.Prefixicon});

  TextEditingController? controller;
  String? hintText, labelText;
  IconData? Prefixicon;
  dynamic? validator;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        //prefix: Icon(Icons.email),
        //  prefixIcon: Icon(Icons.email),

        suffixIcon: Icon(Prefixicon),
        fillColor: Colors.blue[100],
        filled: true,
        hintText: "$hintText",
        labelText: "$labelText",
        hintStyle: TextStyle(color: Colors.red),

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color.fromARGB(255, 86, 244, 54))),
      ),
    );
  }
}