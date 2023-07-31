import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackNavigationButton extends StatelessWidget {
  const BackNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/images/Mask Group 11.svg')),
    );
  }
}
