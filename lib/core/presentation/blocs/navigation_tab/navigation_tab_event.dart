part of 'navigation_tab_bloc.dart';

abstract class NavigationTabEvent extends Equatable {
  const NavigationTabEvent();

  @override
  List<Object> get props => [];
}

class HideNavigationTab extends NavigationTabEvent {}

class ShowNavigationTab extends NavigationTabEvent {}

class ChangeNavigationTab extends NavigationTabEvent {
  final int index;

  const ChangeNavigationTab(this.index);

  @override
  List<Object> get props => [index];
}
