import 'package:flutter/material.dart';
import 'package:shop_app_flutter/cart_page.dart';
import 'package:shop_app_flutter/product_list.dart';

class HomPeage extends StatefulWidget {
  const HomPeage({super.key});

  @override
  State<HomPeage> createState() => _HomePeageState();
}

class _HomePeageState extends State<HomPeage> {
  int currentPage = 0;

  List<Widget> page = const [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: page,
      ),
      //page[currentPage],
      // currentPage == 0 ? ProductList() : CartPage(),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
