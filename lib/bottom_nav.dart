import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

     // shape: const CircularNotchedRectangle(),
      notchMargin: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => widget.onTap(0),
            child: Card(
              child: Icon(
                Icons.home,
                color: widget.currentIndex == 0 ? const Color(0xFF28303F) : Colors.grey,
              ),
            //  onPressed: () => widget.onTap(0),
            ),
          ),
          InkWell(
            onTap: () => widget.onTap(1),
            child: Card(
              child: Icon(
                Icons.shopping_bag_outlined,
                color: widget.currentIndex == 1 ? const Color(0xFF28303F) : Colors.grey,
              ),
              //  onPressed: () => widget.onTap(0),
            ),
          ),

          InkWell(
            onTap: () => widget.onTap(2),
            child: Card(
              child: Icon(
                Icons.person_2_outlined,
                color: widget.currentIndex == 2 ? const Color(0xFF28303F) : Colors.grey,
              ),
              //  onPressed: () => widget.onTap(0),
            ),
          ),
          InkWell(
            onTap: () => widget.onTap(3),
            child: Card(
              child: Icon(
                Icons.chat_bubble_outline,
                color: widget.currentIndex == 3 ? const Color(0xFF28303F) : Colors.grey,
              ),
              //  onPressed: () => widget.onTap(0),
            ),
          ),
        ],
      ),
    );
  }
}
