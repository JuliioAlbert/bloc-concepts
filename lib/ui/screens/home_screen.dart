import 'package:bloc_concepts/domain/bloc/botton_navigation/botton_navigation_bloc.dart';
import 'package:bloc_concepts/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottonNavigationBloc(),
      child: const HomeView(),
    );
  }
}
