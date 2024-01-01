import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_store_stacked/UI/buyers/main_view/main_viewmodel.dart';
import 'package:stacked/stacked.dart';

class BottomNavBar extends ViewModelWidget<MainViewModel> {
  @override
  Widget build(BuildContext context, MainViewModel viewModel) {
    return BottomNavigationBar(
        currentIndex: viewModel.pageIndex,
        onTap: (value) {
          viewModel.bottomNavValue(value);
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
        
  }
}

class MainNavBody extends ViewModelWidget<MainViewModel> {
  @override
  Widget build(BuildContext context, MainViewModel viewModel) {
    return viewModel.pages[viewModel.pageIndex];
        
  }
}
