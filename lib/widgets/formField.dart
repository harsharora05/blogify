import 'package:flutter/material.dart';

class formFields extends StatelessWidget {
  const formFields({super.key, required this.label, required this.isObs});

  final String label;
  final bool isObs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
          obscureText: isObs,
          decoration: InputDecoration(
            label: Text(label),
            border: const OutlineInputBorder(
                borderSide: BorderSide(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )),
    );
  }
}
