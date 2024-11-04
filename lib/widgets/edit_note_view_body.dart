import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_fiel.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 32,
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
      ),
    );
  }
}
