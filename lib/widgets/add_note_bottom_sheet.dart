import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_add_note_button.dart';
import 'package:note_app/widgets/custom_text_fiel.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            SizedBox(
              height: 32,
            ),
            CustomAddNoteButton(),
          ],
        ),
      ),
    );
  }
}
