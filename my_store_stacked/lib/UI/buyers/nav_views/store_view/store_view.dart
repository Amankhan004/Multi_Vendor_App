import 'package:flutter/material.dart';

import 'package:my_store_stacked/UI/buyers/nav_views/store_view/store_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(viewModelBuilder:()=> StoreViewModel(), builder: (context, viewModel, child){
      return Center(
        child: Text("Store Screen"),
      );
    });
  }
}

