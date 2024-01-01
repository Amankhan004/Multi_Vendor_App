import 'package:flutter/material.dart';
import 'package:my_store_provider/views/buyers/nav_views/account_view.dart';
import 'package:my_store_provider/views/buyers/nav_views/cart_view.dart';
import 'package:my_store_provider/views/buyers/nav_views/category_view.dart';
import 'package:my_store_provider/views/buyers/nav_views/home_view.dart';
import 'package:my_store_provider/views/buyers/nav_views/search_view.dart';
import 'package:my_store_provider/views/buyers/nav_views/store_view.dart';

class MainViewProvider with ChangeNotifier {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  bottomNavValue(val) {
    _pageIndex = val;
    notifyListeners();
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
