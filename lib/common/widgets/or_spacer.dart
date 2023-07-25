import 'package:flutter/material.dart';

class OrSpacer extends StatelessWidget {
  const OrSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 0.4,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Text(
            "Or",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 0.4,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
