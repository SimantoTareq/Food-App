import 'package:flutter/material.dart';


class ItemFoodCard extends StatefulWidget {
  String? label;
  String? subTitle;
  String? asset;
  String? price;
  String? addToCartLabel;
  Function? onClickAction;

  // Function? onClickAction;
  ItemFoodCard({
    Key? key,
    this.label,
    this.subTitle,
    this.asset,
    this.price,
    this.addToCartLabel,
    this.onClickAction,
  }) : super(key: key);

  @override
  State<ItemFoodCard> createState() => _ItemFoodCardState();
}

class _ItemFoodCardState extends State<ItemFoodCard> {
  @override
  // Widget build(BuildContext context) {
  //   return Expanded(
  //     child: Card(
  //       child: InkWell(
  //         onTap: (){
  //           if(widget.onClickAction!=null) {
  //             widget.onClickAction!();
  //           }
  //         },
  //         child: Column(
  //           children: [
  //             Badge(
  //               child: Image.asset(
  //                 // width: MediaQuery.of(context).size.width * .3,
  //                 // height: MediaQuery.of(context).size.height * .3,
  //                 widget.asset ?? 'Image not found',
  //
  //               ),
  //
  //             ),
  //             // const SizedBox(
  //             //   height: 4,
  //             // ),
  //
  //             Center(
  //               child: Text(widget.label ?? "",
  //                 style: const TextStyle(
  //                     fontSize: 16,
  //                     fontWeight: FontWeight.bold
  //
  //                 ),
  //                 //overflow: TextOverflow.ellipsis,
  //               ),
  //             ),
  //
  //             Center(
  //               child: Text(widget.subTitle ?? "",
  //                 style: TextStyle(
  //                     color: Color(0xFF94979F)
  //                 ),
  //                 //overflow: TextOverflow.ellipsis,
  //               ),
  //             ),
  //
  //             Center(
  //               child: Text(widget.price ?? "",
  //                 style: const TextStyle(
  //                     fontSize: 16,
  //                     fontWeight: FontWeight.bold
  //
  //                 ),
  //                 //overflow: TextOverflow.ellipsis,
  //               ),
  //             ),
  //
  //             Container(
  //               color: Color(0xFF0D5EF9),
  //               height: 50,
  //               // decoration: BoxDecoration(
  //               //   borderRadius:
  //               //
  //               // ),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Icon(Icons.shopping_basket_outlined,
  //                     color: Colors.white,
  //                   ),
  //                   SizedBox(width: 8,),
  //                   Text(widget.addToCartLabel ?? "",
  //                     style: TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 16
  //
  //                     ),
  //                   )
  //                 ],
  //
  //
  //               ),
  //             )
  //
  //
  //
  //
  //           ],
  //
  //
  //         ),
  //       ),
  //
  //
  //     ),
  //   );
  // }




Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 10,
        child: InkWell(
          onTap: () {
            if (widget.onClickAction != null) {
              widget.onClickAction!();
            }
          },
          child: Stack(
            clipBehavior: Clip.none, // Allows the image to overflow the parent
            children: [
              Column(
                children: [
                  // Placeholder for moving the image slightly up
                  const SizedBox(height: 50),

                  // Label and other content of the card
                  Center(
                    child: Text(
                      widget.label ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      widget.subTitle ?? "",
                      style: const TextStyle(
                        color: Color(0xFF94979F),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      widget.price ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFF0D5EF9),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_basket_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          widget.addToCartLabel ?? "",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Positioned image slightly above the parent widget
              Positioned(
                top: -100, // Move the image upwards by 100 pixels
                left: 0,
                right: 0,
                child: Center(
                  child: Badge(
                    child: Image.asset(
                      widget.asset ?? 'Image not found',

                     width: MediaQuery.of(context).size.width * .3 , // You can adjust the image size if necessary
                     height: MediaQuery.of(context).size.width*.3  ,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
