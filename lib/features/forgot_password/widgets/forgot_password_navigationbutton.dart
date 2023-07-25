import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordNavigationButton extends StatelessWidget {
  const ForgotPasswordNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/Mask Group 11.svg')),
    );
  }
}
