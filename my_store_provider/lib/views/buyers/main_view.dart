import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_store_provider/providers/main_view_provider.dart';
import 'package:provider/provider.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainViewProvider>(context, listen: false);
    print("build");
    return Scaffold(bottomNavigationBar: Consumer<MainViewProvider>(
      builder: (context, value, child) {
        print("navbar");
        return BottomNavigationBar(
            currentIndex: value.pageIndex,
            onTap: (value) {
              mainProvider.bottomNavValue(value);
            },
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.yellow.shade900,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "HOME"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/explore.svg",
                    width: 20,
                  ),
                  label: "CATEGORIES"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/shop.svg",
                    width: 20,
                  ),
                  label: "STORE"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/cart.svg",
                    width: 20,
                  ),
                  label: "CART"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/search.svg",
                    width: 20,
                  ),
                  label: "SEARCH"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/account.svg",
                    width: 20,
                  ),
                  label: "ACCOUNT"),
            ]);
      },
    ), body: Consumer<MainViewProvider>(builder: (context, value, child) {
      // print("body");
      return value.pages[value.pageIndex];
    }));
  }
}
