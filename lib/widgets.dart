import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



final textController = TextEditingController();


Widget CustomAppBar(String text){
  return  Row(

    children: [
      const Icon(Icons.arrow_back_ios),
      const SizedBox(width: 40,),
      Text(text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )
      ),



    ],

  );

}

Widget CustomSearch(){
  return Row(
    children: [
      const Icon(CupertinoIcons.search),
      Expanded(child: HomePageCustomTextField(textController)),
      const Icon(CupertinoIcons.bars),

    ],

  );


}

Widget HomePageCustomTextField(TextEditingController controller, ){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: controller,

      decoration: InputDecoration(
        hintText: 'Search',

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none


        ),

      ),


    ),
  );



}
Widget CustomTextButton({
  required String text,
  required bool isClicked, // Pass the clicked state from a StatefulWidget
  required VoidCallback onPressed, // Pass the onPressed action
}){
  return TextButton(
    onPressed: onPressed,

    style: TextButton.styleFrom(
      backgroundColor: isClicked ? Color(0xFF0D5EF9) : Colors.white,
      foregroundColor: isClicked ? Colors.white : Color(0xFF0D5EF9),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(
            //  color: isClicked ? Color(0xFF0D5EF9) : Color(0xFF0D5EF9)
            color: Color(0xFF0D5EF9)
          )
      ),


    ),
    child: Text(text,style: TextStyle(color: Color(0xFF0D5EF9)),),




  );

}
Widget CustomPaymentTextField({
  required String hintText,
  required String image,
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String? Function(String?) validator,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType, // Email keyboard type
    validator: validator,
    decoration: InputDecoration(
      prefixIcon: Padding(
        padding: const EdgeInsets.all(12.0), // Add padding to the icon
        child: Image.asset(
          image, // Replace with your image asset path
          width: 27,
          height: 32,
        ),
      ),
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Colors.grey, // Set the hint text color to grey
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
        borderSide: const BorderSide(
          color: Color(0xFF0D5EF9), // Border color
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          color: Color(0xFF0D5EF9), // Border color when focused
          width: 2.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          color: Color(0xFF94979F), // Default border color
        ),
      ),
    ),
  );
}

Widget CustomPaymentListTile(String leading, String? trailing){
  return ListTile(
    leading: Text(leading,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,
        color: Color(0x99181E22)),),
    trailing: Text(trailing ?? "N/A",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,
        color: Color(0xFF181E22))),

  );

}



