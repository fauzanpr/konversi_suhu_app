import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.celcius,
  }) : super(key: key);

  final TextEditingController celcius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: celcius,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: const InputDecoration(
        icon: Icon(
          Icons.ac_unit,
        ),
        hintText: "Masukkan suhu dalam Celsius",
      ),
    );
  }
}
