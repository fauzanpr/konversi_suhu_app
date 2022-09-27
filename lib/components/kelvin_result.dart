import 'package:flutter/material.dart';

class KelvinResult extends StatelessWidget {
  const KelvinResult({
    Key? key,
    required num inkelvin,
  })  : _inkelvin = inkelvin,
        super(key: key);

  final num _inkelvin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Dalam Celsius",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          _inkelvin.toString(),
          style: const TextStyle(
            fontSize: 36,
          ),
        ),
      ],
    );
  }
}
