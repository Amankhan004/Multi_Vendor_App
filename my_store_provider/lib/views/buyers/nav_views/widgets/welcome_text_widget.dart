import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Howdy , What Are You\n Looking For 👀",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset(
          "assets/icons/cart.svg",
          width: 20,
        )
      ],
    );
  }
}
