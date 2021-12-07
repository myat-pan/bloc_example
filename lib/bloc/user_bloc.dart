// ignore_for_file: override_on_non_overriding_member

import 'package:bloc_example/bloc/user_event.dart';
import 'package:bloc_example/bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(InitialState());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is StudentEvent) {
      yield StudentState();
    } else if (event is TeacherEvent) {
      yield TeacherState();
    }
  }
}
