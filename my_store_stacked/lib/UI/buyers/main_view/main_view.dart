import 'package:flutter/material.dart';
import 'package:my_store_stacked/UI/buyers/main_view/main_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => MainViewModel(),
        builder: (context, viewModel, child) {
          return const Scaffold(
            body: Center(
              child: Text("Main Screen"),
            ),
          );
        });
  }
}
