import 'package:flutter/material.dart';
import '../presentation/search_result_not_found_one_screen/search_result_not_found_one_screen.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/after_recently_search_page_screen/after_recently_search_page_screen.dart';
import '../presentation/home_regular_container_screen/home_regular_container_screen.dart';
import '../presentation/information_screen/information_screen.dart';
import '../presentation/your_height_screen/your_height_screen.dart';
import '../presentation/application_type_screen/application_type_screen.dart';
import '../presentation/application_type_active_screen/application_type_active_screen.dart';
import '../presentation/details_screen/details_screen.dart';
import '../presentation/camera_screen/camera_screen.dart';
import '../presentation/home_post_injury_rehabilitation_screen/home_post_injury_rehabilitation_screen.dart';
import '../presentation/when_end_day_clicked_screen/when_end_day_clicked_screen.dart';
import '../presentation/muscules_choices_screen/muscules_choices_screen.dart';
import '../presentation/muscules_choices_one_screen/muscules_choices_one_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/verification_code_forgot_password_screen/verification_code_forgot_password_screen.dart';
import '../presentation/create_a_new_password_screen/create_a_new_password_screen.dart';
import '../presentation/history_screen/history_screen.dart';
import '../presentation/exercise_screen/exercise_screen.dart';
import '../presentation/congratulation_of_account_screen/congratulation_of_account_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/setting_screen/setting_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String searchResultNotFoundOneScreen =
      '/search_result_not_found_one_screen';

  static const String searchScreen = '/search_screen';

  static const String afterRecentlySearchPageScreen =
      '/after_recently_search_page_screen';

  static const String homeRegularContainerScreen =
      '/home_regular_container_screen';

  static const String homeRegularPage = '/home_regular_page';

  static const String informationScreen = '/information_screen';

  static const String yourHeightScreen = '/your_height_screen';

  static const String applicationTypeScreen = '/application_type_screen';

  static const String applicationTypeActiveScreen =
      '/application_type_active_screen';

  static const String detailsScreen = '/details_screen';

  static const String cameraScreen = '/camera_screen';

  static const String homePostInjuryRehabilitationScreen =
      '/home_post_injury_rehabilitation_screen';

  static const String whenEndDayClickedScreen = '/when_end_day_clicked_screen';

  static const String musculesChoicesScreen = '/muscules_choices_screen';

  static const String musculesChoicesOneScreen = '/muscules_choices_one_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeForgotPasswordScreen =
      '/verification_code_forgot_password_screen';

  static const String createANewPasswordScreen =
      '/create_a_new_password_screen';

  static const String reportsPage = '/reports_page';

  static const String historyScreen = '/history_screen';

  static const String exerciseScreen = '/exercise_screen';

  static const String congratulationOfAccountScreen =
      '/congratulation_of_account_screen';

  static const String scanPage = '/scan_page';

  static const String notificationScreen = '/notification_screen';

  static const String myAccountPage = '/my_account_page';

  static const String settingScreen = '/setting_screen';

  static const String chatBoardPage = '/chat_board_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        searchResultNotFoundOneScreen: (context) =>
            SearchResultNotFoundOneScreen(),
        searchScreen: (context) => SearchScreen(),
        afterRecentlySearchPageScreen: (context) =>
            AfterRecentlySearchPageScreen(),
        homeRegularContainerScreen: (context) => HomeRegularContainerScreen(),
        informationScreen: (context) => InformationScreen(),
        yourHeightScreen: (context) => YourHeightScreen(),
        applicationTypeScreen: (context) => ApplicationTypeScreen(),
        applicationTypeActiveScreen: (context) => ApplicationTypeActiveScreen(),
        detailsScreen: (context) => DetailsScreen(),
        cameraScreen: (context) => CameraScreen(),
        homePostInjuryRehabilitationScreen: (context) =>
            HomePostInjuryRehabilitationScreen(),
        whenEndDayClickedScreen: (context) => WhenEndDayClickedScreen(),
        musculesChoicesScreen: (context) => MusculesChoicesScreen(),
        musculesChoicesOneScreen: (context) => MusculesChoicesOneScreen(),
        loginScreen: (context) => LoginScreen(),
        signUpScreen: (context) => SignUpScreen(),
        forgotPasswordScreen: (context) => ForgotPasswordScreen(),
        verificationCodeForgotPasswordScreen: (context) =>
            VerificationCodeForgotPasswordScreen(),
        createANewPasswordScreen: (context) => CreateANewPasswordScreen(),
        historyScreen: (context) => HistoryScreen(),
        exerciseScreen: (context) => ExerciseScreen(),
        congratulationOfAccountScreen: (context) =>
            CongratulationOfAccountScreen(),
        notificationScreen: (context) => NotificationScreen(),
        settingScreen: (context) => SettingScreen(),
        appNavigationScreen: (context) => AppNavigationScreen(),
        initialRoute: (context) => SignUpScreen()
      };
}
