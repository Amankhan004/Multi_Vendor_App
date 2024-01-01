import 'package:flutter/material.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/search_view/search_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(viewModelBuilder:()=> SearchViewModel(), builder: (context, viewModel, child){
      return Center(
        child: Text("Search Screen"),
      );
    });
  }
}

