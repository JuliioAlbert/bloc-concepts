import 'package:bloc_concepts/domain/bloc/botton_navigation/botton_navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottonNavBloc = context.read<BottonNavigationBloc>();
    return BlocBuilder<BottonNavigationBloc, int>(
      builder: (context, currentTabIndex) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: currentTabIndex,
          onTap: (index) => bottonNavBloc.add(TabChangeEvent(index)),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Alarma"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervisor_account), label: "User"),
          ],
        );
      },
    );
  }
}
