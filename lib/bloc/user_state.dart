abstract class UserState {}

class InitialState extends UserState {}

class StudentState extends UserState {
  String name = "Mg Mg";
}

class TeacherState extends UserState {
  String name = "Ag Ag";
}
