import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category.dart';
import 'package:food_app/item_food_card.dart';

import 'bottom_nav.dart';
import 'widgets.dart';

class PopularMenuHomepage extends StatefulWidget {
  const PopularMenuHomepage({super.key});

  @override
  State<PopularMenuHomepage> createState() => _PopularMenuHomepageState();
}

class _PopularMenuHomepageState extends State<PopularMenuHomepage> {

 // final textController = TextEditingController();
  int _currentIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Here you can handle navigation based on the index
    switch (index) {
      case 0:
      // Navigate to home
        break;
      case 1:
      // Navigate to search
        break;
      case 2:
      // Navigate to cart
        break;
      case 3:
      // Navigate to profile
        break;
    }
  }

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

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35.0,10,45.0,8),
                child: CustomSearch(),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.fromLTRB(35.0,80,35.0,8),
                child: Row(
                  children: [
                    ItemFoodCard(
                       asset: 'images/cheese-burger.png',
                        label: 'Cheese Burger',
                      subTitle: 'Steak House',
                      price: '\$5.99',
                      addToCartLabel: 'Add to cart',
                      onClickAction: () => {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Category()), // Navigate to Category page
                      ),
                      },
                    ),
                    ItemFoodCard(
                      asset: 'images/pizza.png',
                      label: 'Pizza',
                      subTitle: 'Grill Bar',
                      price: '\$12.45',
                      addToCartLabel: 'Add to cart',
                      onClickAction: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Category()), // Navigate to Category page
                        ),
                      },
                    ),
          
                  ],
          
                ),
              ),
          
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.fromLTRB(35.0,80,35.0,8),
                child: Row(
                  children: [
                    ItemFoodCard(
                      asset: 'images/chicken-burger.png',
                      label: 'Chicken Burger',
                      subTitle: 'Irish Pub',
                      price: '\$5.99',
                      addToCartLabel: 'Add to cart',
                      onClickAction: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Category()), // Navigate to Category page
                        ),
                      },
          
          
                    ),
                    ItemFoodCard(
                      asset: 'images/cesarsalad.png',
                      label: 'Cesar Salad',
                      subTitle: 'Irish Pub',
                      price: '\$35.99',
                      addToCartLabel: 'Add to cart',
                      onClickAction: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Category()), // Navigate to Category page
                        ),
                      },
          
                    ),
          
                  ],
                ),
              ),


          
          
          
            ],
          
          
          ),

        ),

        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _currentIndex,
          onTap: _onNavItemTapped,
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
