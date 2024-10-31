import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_fiel.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: const [
          SizedBox(
            height: 30,
          ),
          CustomTextFiel(
            hint: "Title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiel(
            hint: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
