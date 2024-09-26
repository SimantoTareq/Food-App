import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'color/color.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool isObsecure = true;
  bool _isFormValid = false;
  bool _isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: WhiteColor,
            child: Column(
        
              children: [
        
                SvgPicture.asset('images/app_logo.svg'),
                Text("Sing in your account",style: myStyle(15, TextColorr,FontWeight.w800),),
        
        
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email",style: myStyle(15, TextColorr,FontWeight.w800),),
                      SizedBox(height: 10,),
        
                      TextFormField(
                        style: TextStyle(color: GreenColor),
                        controller: emailController,
                        decoration: InputDecoration(
                          fillColor: Color(0xff181E22).withOpacity(0.10),
        
                          hintText: "Enter your Email",
                          hintStyle: TextStyle(color: GreyColor),
                          counterStyle: TextStyle(color: GreenColor),
                          suffixStyle: TextStyle(color: GreenColor),
        
        
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: GreyColor)),
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
                      Text("Password",style: myStyle(15, TextColorr,FontWeight.w800),),
                      SizedBox(height: 10,),
        
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
                          fillColor: Color(0xff181E22).withOpacity(0.10),
        
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
        
                          //filled: true,
                          hintText: "**************",
                          labelStyle: TextStyle(color: Color(0xff0FDA48)),
                          hintStyle: TextStyle(color: GreyColor),
        
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: GreyColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: Color(0xff0FDA48))),
                        ),
                        onChanged: (value) {
                          _validateForm();
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
        
        
                    ],
                  ),
                ),
        
                SizedBox(height: 10,),
        
        
        
        
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _isRememberMeChecked ? Color(0xff0D5EF9) : Colors.transparent, // Outer blue border when checked
                          width: 2, // Thickness of the outer blue border
                        ),
                        borderRadius: BorderRadius.circular(6), // Rounded corners for outer border
                      ),
                      child: SizedBox(
                        width: 31, // Set exact width to fit the checkbox tightly
                        height: 31, // Set exact height to fit the checkbox tightly
                        child: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
        
                            value: _isRememberMeChecked,
                            onChanged: (newValue) {
                              setState(() {
                                _isRememberMeChecked = newValue!;
                              });
                            },
                            activeColor: Color(0xff0D5EF9), // Blue fill color when checked
                            checkColor: Colors.white,
                            side: BorderSide(
                              color: _isRememberMeChecked ? Colors.white : Colors.grey, // Inner white border when checked, grey when unchecked
                              width: 2, // Thickness of the inner white/grey border
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3), // Apply the border radius here
                            ),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces padding around the checkbox
                          ),
                        ),
                      ),
                    ),
        
                    SizedBox(width: 8), // Spacing between checkbox and text
                    Text("Remember Me", style: TextStyle(color: Colors.black)),
                  ],
                ),
                SizedBox(height: 10,),
        
        
        
        
        
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isFormValid
                        ? () {
                      // Form is valid, proceed
                      print("Okay");
                    }
                        : null, // If form is invalid, button is not clickable
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isFormValid ? Color(0xff0D5EF9) : Color(0xff0D5EF9).withOpacity(0.5),
                      disabledBackgroundColor: Color(0xff0D5EF9).withOpacity(0.3),// Dark blue for valid, light blue for invalid
                    ),
                    child: Text("SIGN IN",style: myStyle(15, WhiteColor,FontWeight.w300),),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Forgot password?",style: myStyle(15, BlueColor),),
                SizedBox(height: 25,),
        
        
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Or Continue With",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: GreyColor
                          ),
                          borderRadius: BorderRadius.circular(20)
        
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                        child: Row(
                          children: [
                            SvgPicture.asset('images/facebook.svg'),
                            SizedBox(width: 10,),
        
                            Text("Facebook", style: myStyle(15, TextColorr, FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                    Container(
        
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: GreyColor
                          ),
                          borderRadius: BorderRadius.circular(20)
        
                      ),
        
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                        child: Row(
                          children: [
                            SvgPicture.asset('images/google.svg'),
                            SizedBox(width: 10,),
        
                            Text("Google", style: myStyle(15, TextColorr, FontWeight.w600),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: myStyle(14, TextColorr),),
                    Text("Sign up",style: myStyle(15, BlueColor),)
                  ],
                )
              ],
            ),
        
          ),
        ),
      ),
    );
  }
  void _validateForm() {
    setState(() {
      _isFormValid = _formKey.currentState?.validate() ?? false;
    });
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