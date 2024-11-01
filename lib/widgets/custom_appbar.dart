import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_saerch_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // SizedBox(
        //   height: 84,
        // ),
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        SearchIcon(),
      ],
    );
  }
}
