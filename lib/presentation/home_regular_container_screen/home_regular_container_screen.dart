import 'package:fty/presentation/home_regular_page/home_regular_page.dart';
import 'package:fty/presentation/reports_page/reports_page.dart';
import 'package:fty/presentation/chat_board_page/chat_board_page.dart';
import 'package:fty/presentation/scan_page/scan_page.dart';
import 'package:fty/presentation/my_account_page/my_account_page.dart';
import 'package:fty/widgets/custom_bottom_bar.dart';
import 'models/home_regular_container_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/home_regular_container_bloc.dart';

// ignore_for_file: must_be_immutable
class HomeRegularContainerScreen extends StatelessWidget {
  HomeRegularContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeRegularPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeRegularPage;
      case BottomBarEnum.Report:
        return AppRoutes.reportsPage;
      case BottomBarEnum.Chatbot:
        return AppRoutes.chatBoardPage;
      case BottomBarEnum.Scan:
        return AppRoutes.scanPage;
      case BottomBarEnum.Account:
        return AppRoutes.myAccountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeRegularPage:
        return HomeRegularPage();
      case AppRoutes.reportsPage:
        return ReportsPage();
      case AppRoutes.chatBoardPage:
        return ChatBoardPage();
      case AppRoutes.scanPage:
        return ScanPage();
      case AppRoutes.myAccountPage:
        return MyAccountPage();
      default:
        return DefaultWidget();
    }
  }
}
