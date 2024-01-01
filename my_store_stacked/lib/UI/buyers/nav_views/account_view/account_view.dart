import 'package:flutter/material.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/account_view/account_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => AccountViewModel(),
        builder: (context, viewModel, child) {
          return Center(
            child: Text("Account Screen"),
          );
        });
  }
}
