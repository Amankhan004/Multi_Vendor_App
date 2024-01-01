import 'package:flutter/material.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/cart_view/cart_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(viewModelBuilder:()=> CartViewModel(), builder: (context, viewModel, child){
      return Center(
        child: Text("Cart Screen"),
      );
    });
  }
}

