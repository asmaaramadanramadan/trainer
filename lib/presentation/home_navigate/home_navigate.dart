import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../chat_board_page/chat_board_page.dart';
import '../home_post_injury_rehabilitation_screen/home_post_injury_rehabilitation_screen.dart';
import '../home_regular_page/home_regular_page.dart';
import '../my_account_page/my_account_page.dart';
import '../reports_page/reports_page.dart';
import '../scan_page/scan_page.dart';

class HomeNavigate extends StatefulWidget {
  @override
  State<HomeNavigate> createState() => _HomeNavigateState();
}

class _HomeNavigateState extends State<HomeNavigate> {
  int currentIndex = 0;
  List pages = [
    HomePostInjuryRehabilitationScreen(),
    ReportsPage(),
    ChatBoardPage(),
    ScanPage(),
    MyAccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: _buildBottomBar(context),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type, value) {
        setState(() {
          currentIndex = value;
        });
      },
    );
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
