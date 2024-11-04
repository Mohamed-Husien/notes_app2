import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_saerch_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // SizedBox(
        //   height: 84,
        // ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        SearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
