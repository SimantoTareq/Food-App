
import 'package:flutter/material.dart';
import 'color/color.dart';
import 'widgets.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(

          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(35.0,20,8,8),
            child: CustomAppBar(),
          ),

        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0,10,8,8),
              child: CustomSearch(),
            ),

            // const SizedBox(
          //   height: 4,
          // ),

          const Padding(
            padding: EdgeInsets.fromLTRB(35.0,10,8,8),
            child: Text('Type', style: TextStyle(
              fontSize: 14,


            ),


            ),
          ),

            Padding(
              padding:  const EdgeInsets.fromLTRB(30.0,10,8,8),
              child: Row(
               children: [

                 CustomTextButton('Asian'),
                 SizedBox(width: 10,),
                 CustomTextButton('European'),
                 SizedBox(width: 10,),
                 CustomTextButton('Soup'),
               ],



              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(35.0,10,8,8),
              child: Text('Delivery Time', style: TextStyle(
                fontSize: 14,


              ),


              ),
            ),

            Padding(
              padding:  const EdgeInsets.fromLTRB(30.0,10,8,8),
              child: Row(
                children: [

                  CustomTextButton('10 min'),
                  SizedBox(width: 10,),
                  CustomTextButton('15 min'),
                  SizedBox(width: 10,),
                  CustomTextButton('25 min'),
                  SizedBox(width: 10,),
                  CustomTextButton('45 min'),

                ],



              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(35.0,10,8,8),
              child: Text('Food', style: TextStyle(
                fontSize: 14,


              ),


              ),
            ),

            Padding(
              padding:  const EdgeInsets.fromLTRB(30.0,10,8,8),
              child: Wrap(
                runSpacing: 10.0,
                children: [

                  CustomTextButton('Tacos'),
                  SizedBox(width: 10,),
                  CustomTextButton('Pasta'),
                  SizedBox(width: 10,),
                  CustomTextButton('Burgers'),
                  SizedBox(width: 10,),
                  CustomTextButton('Pizza'),
                  SizedBox(width: 10,),
                  CustomTextButton('Appetizers'),

                ],



              ),
            ),








          ],


        ),

      ),
    );
  }
}
