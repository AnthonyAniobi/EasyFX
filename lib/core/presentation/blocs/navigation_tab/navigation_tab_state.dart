part of 'navigation_tab_bloc.dart';

abstract class NavigationTabState extends Equatable {
  final PersistentTabController tabController;

  const NavigationTabState(this.tabController);

  void changeTabIndex(int index) {
    tabController.index = index;
  }

  @override
  List<Object> get props => [tabController];
}

class NavigationTabShown extends NavigationTabState {
  const NavigationTabShown(super.tabController);
}

class NavigationTabHidden extends NavigationTabState {
  const NavigationTabHidden(super.tabController);
}
