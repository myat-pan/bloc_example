import 'package:bloc_example/bloc/user_bloc.dart';
import 'package:bloc_example/bloc/user_event.dart';
import 'package:bloc_example/bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  String name = "Default";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BlocBuilder<UserBloc, UserState>(
            builder: (BuildContext context, state) {
          if (state is TeacherState) {
            name = state.name;
          } else if (state is StudentState) {
            name = state.name;
          }
          return Text(name);
        }),
        OutlinedButton(
          onPressed: () {
            BlocProvider.of<UserBloc>(context).add(TeacherEvent());
          },
          child: const Text("Teacher Name"),
        ),
        OutlinedButton(
          onPressed: () {
            BlocProvider.of<UserBloc>(context).add(StudentEvent());
          },
          child: const Text("Student Name"),
        ),
      ],
    );
  }
}
