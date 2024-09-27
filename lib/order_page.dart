import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color/color.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
                      Text("Order details",style: myStyle(18, BlackColor,FontWeight.w600),)
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("images/pizza.jpg"),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Pizza pepperoni",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("\$25.90",style: myStyle(12, BlueColor,FontWeight.w600),)
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("images/roll.jpg"),
                          SizedBox(width: 10,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Philadelphia roll",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("\$25.90",style: myStyle(12, BlueColor,FontWeight.w600),)

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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("images/noodle.jpg"),
                          SizedBox(width: 10,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Noodle",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("\$25.90",style: myStyle(12, BlueColor,FontWeight.w600),)

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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("images/pizza.jpg"),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Pizza pepperoni",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("\$25.90",style: myStyle(12, BlueColor,FontWeight.w600),)
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("images/roll.jpg"),
                          SizedBox(width: 10,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Philadelphia roll",style: myStyle(14, BlackColor,FontWeight.w600)),
                              Text("\$25.90",style: myStyle(12, BlueColor,FontWeight.w600),)

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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("images/noodle.jpg"),
                          SizedBox(width: 10,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Noodle",style: myStyle(14, BlackColor,FontWeight.w600),),
                              Text("\$25.90",style: myStyle(12, BlueColor,FontWeight.w600),)

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: GreyColor.withOpacity(0.4)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Basket total",style: myStyle(16, Color(0xff181E22).withOpacity(0.4),FontWeight.w500),),
                          Text("+ USD 44.88",style: myStyle(16, BlackColor,FontWeight.w400),),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: GreyColor,
                      endIndent: 0,
                      indent: 0,

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text("Discount",style: myStyle(16, Color(0xff181E22).withOpacity(0.4),FontWeight.w400),),
                          Text("- USD 1.20",style: myStyle(16, BlueColor,FontWeight.w500),),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: GreyColor,
                      endIndent: 0,
                      indent: 0,

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text("Total",style: myStyle(16, Color(0xff181E22).withOpacity(0.4),FontWeight.w400),),
                          Text("USD 43.68",style: myStyle(16, BlackColor,FontWeight.w700),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal:50),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: BlueColor,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(

                      color: BlueColor.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ],
                ),
                height: 80,
                width: double.infinity,
                child: Center(child: Text("PLACE MY ORDER",style: myStyle(20, WhiteColor,FontWeight.w600),)),
              ),
            ),
          ),
          SizedBox(height: 20,)


        ],
      ),







    );
  }
}

