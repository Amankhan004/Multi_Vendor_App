import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store_provider/views/buyers/nav_views/widgets/search_input_widget.dart';
import 'package:my_store_provider/views/buyers/nav_views/widgets/welcome_text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child:const Column(
        children: [
          WelcomeText(),
          SizedBox(
            height: 14,
          ),
          SearchInput()
        ],
      ),
    );
  }
}


