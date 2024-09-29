import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



final textController = TextEditingController();

Widget CustomAppBar(){
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(

      children: [
        Icon(Icons.arrow_back_ios),
        SizedBox(width: 40,),
        Text('Popular Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
        ),



      ],

    ),
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


