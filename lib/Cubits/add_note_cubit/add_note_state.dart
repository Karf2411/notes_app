class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailed extends AddNoteState {
  final String error;
  AddNoteFailed(this.error);
}
