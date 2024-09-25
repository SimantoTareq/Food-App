import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/color/color.dart';
import 'package:sizer/sizer.dart';

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
  bool _isFormValid = false;
  bool _isRememberMeChecked = false;





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: WhiteColor,
          child: Column(

            children: [

              SvgPicture.asset('images/app_logo.svg'),
              Text("Sing up your account"),


              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email"),
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

              // Container(
              //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              //   height: 50,
              //   width: double.infinity,
              //   child: ElevatedButton(
              //       onPressed: () {
              //         if (_formKey.currentState!.validate()) {
              //           print("Okay");
              //
              //         } else {
              //           print("Something is wrong");
              //         }
              //       },
              //       child: Text("Submit")),
              // )
              //
              // Theme(
              //   data: ThemeData(
              //     unselectedWidgetColor: Colors.white, // Set the border color when unchecked
              //   ),
              //   child: CheckboxListTile(
              //     title: Text("Remember Me", style: TextStyle(color: Colors.white)),
              //     value: _isRememberMeChecked,
              //     onChanged: (newValue) {
              //       setState(() {
              //         _isRememberMeChecked = newValue!;
              //       });
              //     },
              //     controlAffinity: ListTileControlAffinity.leading, // Puts the checkbox before the label
              //     activeColor: Colors.blue, // Blue fill color when checked
              //     checkColor: Colors.white, // White check mark color
              //     side: BorderSide(color: Colors.blue, width: 2), // Blue circle around with white border
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(5), // Border radius for checkbox
              //     ),
              //   ),
              // ),


              // CheckboxListTile(
              //   title: Text("Remember Me", style: TextStyle(color: Colors.white)),
              //   value: _isRememberMeChecked,
              //   onChanged: (newValue) {
              //     setState(() {
              //       _isRememberMeChecked = newValue!;
              //     });
              //   },
              //   controlAffinity: ListTileControlAffinity.leading, // Checkbox before the label
              //   activeColor: Colors.blue, // Blue fill color when checked
              //   checkColor: Colors.white, // White check mark color
              //   side: BorderSide(
              //     color: _isRememberMeChecked ? Colors.white : Colors.grey, // Inner border: grey before, white after checked
              //     width: 2,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              //   // Adding a container around the checkbox to add the outer blue border
              //   contentPadding: EdgeInsets.zero, // Align the checkbox neatly
              //   checkboxShape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(5),
              //     side: BorderSide(
              //       color: _isRememberMeChecked ? Colors.blue : Colors.transparent, // Outer blue border when checked
              //       width: 3, // Thicker blue border around the white border
              //     ),
              //   ),
              // ),

              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       color: _isRememberMeChecked ? Colors.blue : Colors.transparent, // Outer blue border when checked
              //       width: 3, // Thickness of the outer blue border
              //     ),
              //     borderRadius: BorderRadius.circular(5), // Rounded corners for outer border
              //   ),
              //   child: CheckboxListTile(
              //     title: Text("Remember Me", style: TextStyle(color: Colors.white)),
              //     value: _isRememberMeChecked,
              //     onChanged: (newValue) {
              //       setState(() {
              //         _isRememberMeChecked = newValue!;
              //       });
              //     },
              //     controlAffinity: ListTileControlAffinity.leading, // Checkbox before the label
              //     activeColor: Colors.blue, // Blue fill color when checked
              //     checkColor: Colors.white, // White check mark color
              //     side: BorderSide(
              //       color: _isRememberMeChecked ? Colors.white : Colors.grey, // Inner white border after checked, grey before
              //       width: 2, // Thickness of the inner white/grey border
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(5), // Rounded corners for inner border
              //     ),
              //   ),
              // ),
              //


              // CheckboxListTile(
              //   title: Text("Remember Me", style: TextStyle(color: Colors.white)),
              //   value: _isRememberMeChecked,
              //   onChanged: (newValue) {
              //     setState(() {
              //       _isRememberMeChecked = newValue!;
              //     });
              //   },
              //   controlAffinity: ListTileControlAffinity.leading, // Checkbox before the label
              //   activeColor: Colors.blue, // Blue fill color when checked
              //   checkColor: Colors.white, // White check mark color
              //   side: BorderSide(
              //     color: _isRememberMeChecked ? Colors.white : Colors.grey, // Grey before click, white after
              //     width: 2,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(5),
              //     side: BorderSide(
              //       color: _isRememberMeChecked ? Colors.blue : Colors.grey, // Blue border with white when checked
              //       width: 2,
              //     ),
              //   ),
              // ),
              //
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       color: _isRememberMeChecked ? Colors.blue : Colors.transparent, // Outer blue border when checked
              //       width: 3, // Thickness of the outer blue border
              //     ),
              //     borderRadius: BorderRadius.circular(5), // Rounded corners for outer border
              //   ),
              //   child: CheckboxListTile(
              //     title: Text("Remember Me", style: TextStyle(color: Colors.white)),
              //     value: _isRememberMeChecked,
              //     onChanged: (newValue) {
              //       setState(() {
              //         _isRememberMeChecked = newValue!;
              //       });
              //     },
              //     controlAffinity: ListTileControlAffinity.leading, // Checkbox before the label
              //     activeColor: Colors.blue, // Blue fill color when checked
              //     checkColor: Colors.white, // White check mark color
              //     side: BorderSide(
              //       color: _isRememberMeChecked ? Colors.white : Colors.grey, // Inner white border when checked, grey before
              //       width: 2, // Thickness of the inner white/grey border
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(5), // Rounded corners for inner border
              //     ),
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _isRememberMeChecked ? Colors.blue : Colors.transparent, // Outer blue border when checked
                    width: 3, // Thickness of the outer blue border
                  ),
                  borderRadius: BorderRadius.circular(5), // Rounded corners for outer border
                ),
                //padding: EdgeInsets.all(1), // Add some padding to make the border fit tightly
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Make the row take only as much space as needed
                  children: [
                    Checkbox(
                      value: _isRememberMeChecked,
                      onChanged: (newValue) {
                        setState(() {
                          _isRememberMeChecked = newValue!;
                        });
                      },
                      activeColor: Colors.blue, // Blue fill color when checked
                      checkColor: Colors.white, // White check mark color
                      side: BorderSide(
                        color: _isRememberMeChecked ? Colors.white : Colors.grey, // Inner white border when checked, grey when unchecked
                        width: 2, // Thickness of the inner white/grey border
                      ),
                    ),
                    SizedBox(width: 8), // Spacing between checkbox and text
                    Text("Remember Me", style: TextStyle(color: Colors.white)), // Text label
                  ],
                ),
              ),


              Container(
                decoration: BoxDecoration(

                  border: Border.all(
                    color: _isRememberMeChecked ? Colors.blue : Colors.transparent, // Outer blue border when checked
                    width: 3, // Thickness of the outer blue border
                  ),
                  borderRadius: BorderRadius.circular(5), // Rounded corners for outer border
                ),
                child: CheckboxListTile(
                  title: Text("Remember Me", style: TextStyle(color: Colors.white)),
                  value: _isRememberMeChecked,
                  onChanged: (newValue) {
                    setState(() {
                      _isRememberMeChecked = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading, // Checkbox before the label
                  activeColor: Colors.blue, // Blue fill color when checked
                  checkColor: Colors.white, // White check mark color
                  side: BorderSide(
                    color: _isRememberMeChecked ? Colors.white : Colors.grey, // Inner white border when checked, grey before
                    width: 2, // Thickness of the inner white/grey border
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Rounded corners for inner border
                  ),
                ),
              ),


              // CheckboxListTile(
        //         title: Text("Remember Me", style: TextStyle(color: Colors.black)),
        //         value: _isRememberMeChecked,
        //         onChanged: (newValue) {
        //           setState(() {
        //             _isRememberMeChecked = newValue!;
        //           });
        //         },
        //         controlAffinity: ListTileControlAffinity.leading, // Puts the checkbox before the label
        //       ),
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
                    backgroundColor: _isFormValid ? Color(0xff0D5EF9) : Color(0xff0D5EF9).withOpacity(0.1), // Dark blue for valid, light blue for invalid
                  ),
                  child: Text("Submit"),
                ),
              ),
            ],
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