import 'package:flutter/material.dart';


class ItemFoodCard extends StatefulWidget {
  String? label;
  String? subTitle;
  String? asset;
  String? price;
  String? addToCartLabel;

  // Function? onClickAction;
  ItemFoodCard({
    Key? key,
    this.label,
    this.subTitle,
    this.asset,
    this.price,
    this.addToCartLabel,
  }) : super(key: key);

  @override
  State<ItemFoodCard> createState() => _ItemFoodCardState();
}

class _ItemFoodCardState extends State<ItemFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          children: [
            Badge(
              child: Image.asset(
                // width: MediaQuery.of(context).size.width * .3,
                // height: MediaQuery.of(context).size.height * .3,
                widget.asset ?? 'Image not found',

              ),

            ),
            // const SizedBox(
            //   height: 4,
            // ),

            Center(
              child: Text(widget.label ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold

                ),
                //overflow: TextOverflow.ellipsis,
             ),
            ),

            Center(
              child: Text(widget.subTitle ?? "",
                style: TextStyle(
                  color: Color(0xFF94979F)
                ),
                //overflow: TextOverflow.ellipsis,
              ),
            ),

            Center(
              child: Text(widget.price ?? "",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold

                ),
                //overflow: TextOverflow.ellipsis,
              ),
            ),

            Container(
              color: Color(0xFF0D5EF9),
              height: 50,
              // decoration: BoxDecoration(
              //   borderRadius:
              //
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket_outlined,
                  color: Colors.white,
                  ),
                  SizedBox(width: 8,),
                  Text(widget.addToCartLabel ?? "",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16

                  ),
                  )
                ],


              ),
            )




          ],


        ),


      ),
    );
  }
}
