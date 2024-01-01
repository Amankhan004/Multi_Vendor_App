import 'package:flutter/material.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/category_view/category_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(viewModelBuilder:()=> CategoryViewModel(), builder: (context, viewModel, child){
      return Center(
        child: Text("Category Screen"),
      );
    });
  }
}

