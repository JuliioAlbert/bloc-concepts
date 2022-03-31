part of 'botton_navigation_bloc.dart';

abstract class BottonNavigationEvent extends Equatable {
  const BottonNavigationEvent();

  @override
  List<Object> get props => [];
}

class TabChangeEvent extends BottonNavigationEvent {
  final int newIndex;

  const TabChangeEvent(this.newIndex);

  @override
  // TODO: implement props
  List<Object> get props => [newIndex];
}
