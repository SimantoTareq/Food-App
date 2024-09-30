
import 'package:flutter/material.dart';
import 'color/color.dart';
import 'widgets.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(

          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(35.0,20,8,8),
            child: CustomAppBar('Popular Menu'),
          ),

        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0,10,45.0,8),
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

                 CustomTextButton(
                     text: 'Asian',
                     isClicked: _isClicked,
                     onPressed: () {
                       // setState(() {
                       //
                       //  // _isClicked = !_isClicked;
                       // });

                     }
                 ),
                 SizedBox(width: 10,),
                 CustomTextButton(
                     text: 'European',
                     isClicked: _isClicked,
                     onPressed: () {  }
                 ),
                 SizedBox(width: 10,),
                 CustomTextButton(
                     text: 'Soup',
                     isClicked: _isClicked,
                     onPressed: () {  }
                 ),
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

                  CustomTextButton(
                      text: '10 min',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),
                  SizedBox(width: 10,),
                  CustomTextButton(
                      text: '15 min',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),
                  SizedBox(width: 10,),
                  CustomTextButton(
                      text: '25 min',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),
                  SizedBox(width: 10,),
                  CustomTextButton(
                      text: '45 min',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),

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

                  CustomTextButton(
                      text: 'Tacos',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),
                  SizedBox(width: 10,),
                  CustomTextButton(
                      text: 'Pasta',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),
                  SizedBox(width: 10,),
                  CustomTextButton(
                      text: 'Burgers',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),
                  SizedBox(width: 10,),
                  CustomTextButton(
                      text: 'Pizza',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),
                  SizedBox(width: 10,),
                  CustomTextButton(
                      text: 'Appetizers',
                      isClicked: _isClicked,
                      onPressed: () {  }
                  ),

                ],



              ),
            ),








          ],


        ),

      ),
    );
  }
}
