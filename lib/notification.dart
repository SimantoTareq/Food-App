import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/color/color.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,


      body:




      Column(
        children: [
          Container(
            height: 100,
            child: Stack(
              children: [


                Positioned(
                  left: 10,
                  top: 38,

                  child:

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: WhiteColor,
                              borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(

                                color: BlackColor.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset: Offset(0, 8), // changes position of shadow
                              ),
                            ],


                          ),
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(Icons.keyboard_arrow_left, color: BlackColor,)),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Notifications",style: myStyle(18, BlackColor,FontWeight.w600),)
                    ],
                  ),


                ),


              ],

            ),
          ),
          Expanded(
            child: ListView(
              children: [


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        color: WhiteColor,

                        borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(

                          color: BlackColor.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(0, 8), // changes position of shadow
                        ),
                      ],

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: BlueColor,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Icon(Icons.check,color: WhiteColor,),
                            ),

                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Your order is completed! ",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("16:00",style: myStyle(12, BlackColor,FontWeight.w300),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: WhiteColor,

                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(

                          color: BlackColor.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(0, 8), // changes position of shadow
                        ),
                      ],

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: BlueColor,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Icon(Icons.check,color: WhiteColor,),
                            ),

                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Your order is completed! ",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("20:00",style: myStyle(12, BlackColor,FontWeight.w300),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: WhiteColor,

                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(

                          color: BlackColor.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(0, 8), // changes position of shadow
                        ),
                      ],

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: BlackColor,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Text("\$",style: myStyle(25, WhiteColor,FontWeight.w300),),
                            ),

                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Your received 200 points",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("11.00",style: myStyle(12, BlackColor,FontWeight.w300),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),




                SizedBox(height: 5,),


                Padding(
                  padding: const EdgeInsets.all(10.0),

                )


              ],
            ),
          ),
        
          
        ],
      ),







    );
  }
}
