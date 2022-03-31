import 'package:bloc_concepts/domain/bloc/botton_navigation/botton_navigation_bloc.dart';
import 'package:bloc_concepts/ui/widgets/custom_botton_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<BottonNavigationBloc, int>(
          builder: (context, state) {
            return Text('HomeScreen $state');
          },
        ),
      ),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}
