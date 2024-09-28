import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/item_food_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
        flexibleSpace: CustomAppBar(),

        ),

        body: Column(
          children: [
            CustomSearch(),
            Row(
              children: [
                ItemFoodCard(
                   asset: 'images/cheese-burger.png',
                    label: 'Cheese Burger',
                  subTitle: 'Steak House',
                  price: '\$5.99',
                  addToCartLabel: 'Add to cart',
                ),
                ItemFoodCard(
                  asset: 'images/pizza.png',
                  label: 'Pizza',
                  subTitle: 'Grill Bar',
                  price: '\$12.45',
                  addToCartLabel: 'Add to cart',
                ),

              ],

            ),
            Row(
              children: [
                ItemFoodCard(
                  asset: 'images/chicken-burger.png',
                  label: 'Chicken Burger',
                  subTitle: 'Irish Pub',
                  price: '\$5.99',
                  addToCartLabel: 'Add to cart',

                ),
                ItemFoodCard(
                  asset: 'images/cesarsalad.png',
                  label: 'Chicken Burger',
                  subTitle: 'Irish Pub',
                  price: '\$35.99',
                  addToCartLabel: 'Add to cart',

                ),

              ],
            )



          ],


        ),

      ),
    );
  }


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

 // Widget ItemImage() {
 //    return Padding(
 //      padding: const EdgeInsets.all(14.0),
 //      child: Row(
 //        children: [
 //          Stack(
 //            alignment: Alignment.topCenter,
 //            children: [
 //              Container(
 //                width: 100,
 //                height: 100,
 //                decoration: BoxDecoration(
 //                  color: Colors.blue,
 //                  shape: BoxShape.rectangle,
 //                ),
 //              ),
 //
 //              Container(
 //                width: 50,
 //                height: 50,
 //                decoration: BoxDecoration(
 //                  color: Colors.red,
 //                  shape: BoxShape.rectangle,
 //                ),
 //              ),
 //            ],
 //          ),
 //          const SizedBox(width: 12),
 //          // Add more widgets here, such as Text or Icon
 //        ],
 //      ),
 //    );
 //  }

}
