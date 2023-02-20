abstract class AppStates {}

class InitState extends AppStates {}

class AppChangeBottomNavState extends AppStates {}

class AppChangeModeState extends AppStates {}


class AppFetchLoadingState extends AppStates {}
class AppFetchSuccessState extends AppStates {}
class AppFetchErrorState extends AppStates {
  final String error;

  AppFetchErrorState(this.error);
}



class AppCreateDatabaseLoadingState extends AppStates {}
class AppCreateDatabaseSuccessState extends AppStates {}
class AppCreateDatabaseErrorState extends AppStates {
  final String error;

  AppCreateDatabaseErrorState(this.error);
}

class AppGetDatabaseState extends AppStates {}

class AppInsertDatabaseState extends AppStates {}

class AppUpdateDatabaseState extends AppStates {}

class AppDeleteDatabaseState extends AppStates {}

class AppChangeBottomSheetState extends AppStates{}

class AppNewTaskPositionState extends AppStates{}

class AppDoneTaskPositionState extends AppStates{}

class AppArchivedTaskPositionState extends AppStates{}

class AppItemTimeColorState extends AppStates{}
