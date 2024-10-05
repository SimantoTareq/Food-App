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
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: widget.currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
            onPressed: () => widget.onTap(0),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: widget.currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
            onPressed: () => widget.onTap(1),
          ),

          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: widget.currentIndex == 2 ? Colors.blue : Colors.grey,
            ),
            onPressed: () => widget.onTap(2),
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: widget.currentIndex == 3 ? Colors.blue : Colors.grey,
            ),
            onPressed: () => widget.onTap(3),
          ),
        ],
      ),
    );
  }
}
