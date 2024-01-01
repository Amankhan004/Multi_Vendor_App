import 'package:flutter/material.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/account_view/account_view.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/cart_view/cart_view.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/category_view/category_view.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/home_view/home_view.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/search_view/search_view.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/store_view/store_view.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  bottomNavValue(val) {
    _pageIndex = val;
    rebuildUi();
  }

  List<Widget> _pages = [
    HomeView(),
    CategoryView(),
    StoreView(),
    CartView(),
    SearchView(),
    AccountView()
  ];


List<Widget> get pages => _pages; 


}
