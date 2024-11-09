import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xff717EC3); //note color and give it defult value
  addNote(NoteModel note) async {
    note.color = color
        .value; //here when udr note object i give it the color that i create in note cubit class and then when change it the note object's color autochange

    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNodeBox); //generic concept
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFailure(errMessage: e.toString()),
      );
    }
  }
}
