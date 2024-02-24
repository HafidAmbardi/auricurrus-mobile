import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/backend/services/auth_gate.dart';
import 'package:hafidomio_s_application2/presentation/paired_screen/paired_screen.dart';
import 'package:hafidomio_s_application2/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:hafidomio_s_application2/presentation/trip_lis_screen/trip_lis_screen.dart';
import 'package:hafidomio_s_application2/presentation/name_filled_screen/name_filled_screen.dart';
import 'package:hafidomio_s_application2/presentation/gate_screen/gate_screen.dart';
import 'package:hafidomio_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:hafidomio_s_application2/presentation/sound_list_screen/sound_list_screen.dart';
import 'package:hafidomio_s_application2/presentation/lempuyangan_screen/lempuyangan_screen.dart';
import 'package:hafidomio_s_application2/presentation/connect_screen/connect_screen.dart';
import 'package:hafidomio_s_application2/presentation/loading_drive_screen/loading_drive_screen.dart';
import 'package:hafidomio_s_application2/presentation/search_screen/search_screen.dart';
import 'package:hafidomio_s_application2/presentation/drive_screen/drive_screen.dart';
import 'package:hafidomio_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:hafidomio_s_application2/presentation/continue_pair_screen/continue_pair_screen.dart';
import 'package:hafidomio_s_application2/presentation/bluetooth_screen/bluetooth_screen.dart';
import 'package:hafidomio_s_application2/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hafidomio_s_application2/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:hafidomio_s_application2/presentation/navigation_screen/navigation_screen.dart';
import 'package:hafidomio_s_application2/presentation/name_screen/name_screen.dart';
import 'package:hafidomio_s_application2/presentation/connecting_screen/connecting_screen.dart';
import 'package:hafidomio_s_application2/presentation/location_screen/location_screen.dart';
import 'package:hafidomio_s_application2/presentation/personal_screen/personal_screen.dart';
import 'package:hafidomio_s_application2/presentation/end_screen/end_screen.dart';
import 'package:hafidomio_s_application2/presentation/welcome_signup_screen/welcome_signup_screen.dart';
import 'package:hafidomio_s_application2/presentation/name_one_screen/name_one_screen.dart';
import 'package:hafidomio_s_application2/presentation/searching_screen/searching_screen.dart';
import 'package:hafidomio_s_application2/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:hafidomio_s_application2/presentation/level_hear_screen/level_hear_screen.dart';
import 'package:hafidomio_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String pairedScreen = '/paired_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String tripLisScreen = '/trip_lis_screen';

  static const String nameFilledScreen = '/name_filled_screen';

  static const String gateScreen = '/gate_screen';

  static const String splashScreen = '/splash_screen';

  static const String soundListScreen = '/sound_list_screen';

  static const String lempuyanganScreen = '/lempuyangan_screen';

  static const String connectScreen = '/connect_screen';

  static const String loadingDriveScreen = '/loading_drive_screen';

  static const String searchScreen = '/search_screen';

  static const String driveScreen = '/drive_screen';

  static const String profileScreen = '/profile_screen';

  static const String continuePairScreen = '/continue_pair_screen';

  static const String bluetoothScreen = '/bluetooth_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String navigationScreen = '/navigation_screen';

  static const String nameScreen = '/name_screen';

  static const String connectingScreen = '/connecting_screen';

  static const String locationScreen = '/location_screen';

  static const String personalScreen = '/personal_screen';

  static const String endScreen = '/end_screen';

  static const String welcomeSignupScreen = '/welcome_signup_screen';

  static const String nameOneScreen = '/name_one_screen';

  static const String searchingScreen = '/searching_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String levelHearScreen = '/level_hear_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String login = '/login';

  static Map<String, WidgetBuilder> routes = {
    pairedScreen: (context) => PairedScreen(),
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    tripLisScreen: (context) => TripLisScreen(),
    nameFilledScreen: (context) => NameFilledScreen(),
    gateScreen: (context) => GateScreen(),
    // splashScreen: (context) => SplashScreen(),
    soundListScreen: (context) => SoundListScreen(),
    lempuyanganScreen: (context) => LempuyanganScreen(),
    connectScreen: (context) => ConnectScreen(),
    loadingDriveScreen: (context) => LoadingDriveScreen(),
    searchScreen: (context) => SearchScreen(),
    driveScreen: (context) => DriveScreen(),
    profileScreen: (context) => ProfileScreen(),
    continuePairScreen: (context) => ContinuePairScreen(),
    bluetoothScreen: (context) => BluetoothScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    navigationScreen: (context) => NavigationScreen(),
    nameScreen: (context) => NameScreen(),
    connectingScreen: (context) => ConnectingScreen(),
    locationScreen: (context) => LocationScreen(),
    personalScreen: (context) => PersonalScreen(),
    endScreen: (context) => EndScreen(),
    welcomeSignupScreen: (context) => WelcomeSignupScreen(),
    nameOneScreen: (context) => NameOneScreen(),
    searchingScreen: (context) => SearchingScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    levelHearScreen: (context) => LevelHearScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    login: (context) => AuthChecker(),
  };
}
