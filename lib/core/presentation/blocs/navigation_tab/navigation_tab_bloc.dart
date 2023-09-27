import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

part 'navigation_tab_event.dart';
part 'navigation_tab_state.dart';

class NavigationTabBloc extends Bloc<NavigationTabEvent, NavigationTabState> {
  NavigationTabBloc() : super(NavigationTabShown(PersistentTabController())) {
    on<HideNavigationTab>((event, emit) {
      emit(NavigationTabHidden(state.tabController));
    });
    on<ShowNavigationTab>((event, emit) {
      emit(NavigationTabShown(state.tabController));
    });
    on<ChangeNavigationTab>((event, emit) {
      emit(state..changeTabIndex(event.index));
    });
  }
}
