import 'package:flutter/material.dart';

class ConfirmJoinPawtaiContainer extends StatefulWidget {
  const ConfirmJoinPawtaiContainer({super.key});

  @override
  State<ConfirmJoinPawtaiContainer> createState() =>
      _ConfirmJoinPawtaiContainerState();
}

class _ConfirmJoinPawtaiContainerState
    extends State<ConfirmJoinPawtaiContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            width: 100,
            height: 100,
            child: Image.asset(
                'assets/images/charles-deluvio-Mv9hjnEUHR4-unsplash@2x.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Tommy's Pawtai",
              style: TextStyle(
                  letterSpacing: 0.6,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
