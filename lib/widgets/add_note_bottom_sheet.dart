import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_fiel.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextFiel(),
        ],
      ),
    );
  }
}