import 'package:flutter/material.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/home_view/home_viewmodel.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/widgets/search_input_widget.dart';
import 'package:my_store_stacked/UI/buyers/nav_views/widgets/welcome_text_widget.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top, left: 25, right: 15),
            child:const Column(
              children: [
                WelcomeText(),
                SizedBox(height: 14,),
                SearchInput()
              ],
            ),
          );
        });
  }
}


