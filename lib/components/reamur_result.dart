import 'package:flutter/material.dart';

class ReamurResult extends StatelessWidget {
  const ReamurResult({
    Key? key,
    required num inreamur,
  })  : _inreamur = inreamur,
        super(key: key);

  final num _inreamur;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Dalam Reamur",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          _inreamur.toString(),
          style: const TextStyle(
            fontSize: 36,
          ),
        ),
      ],
    );
  }
}
