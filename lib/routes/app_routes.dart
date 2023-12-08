import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/presentation/splash_screen/splash_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/login_screen/login_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/home_container_screen/home_container_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/category_comedy_screen/category_comedy_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/episode_tab_container_screen/episode_tab_container_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/choose_plan_screen/choose_plan_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/home_recently_watched_screen/home_recently_watched_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/search_result_screen/search_result_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/not_found_screen/not_found_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/empty_state_downloaded_tab_container_screen/empty_state_downloaded_tab_container_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/select_saved_screen/select_saved_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/saved_empty_screen/saved_empty_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/notification_screen/notification_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/no_notification_screen/no_notification_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/history_screen/history_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/no_history_screen/no_history_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/setting_screen/setting_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/language_screen/language_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/help_screen/help_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/search_help_screen/search_help_screen.dart';
import 'package:zonar_marketing__grapichs/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String categoryComedyScreen = '/category_comedy_screen';

  static const String episodePage = '/episode_page';

  static const String episodeTabContainerScreen =
      '/episode_tab_container_screen';

  static const String similiarPage = '/similiar_page';

  static const String aboutPage = '/about_page';

  static const String choosePlanScreen = '/choose_plan_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String homeRecentlyWatchedScreen =
      '/home_recently_watched_screen';

  static const String searchPage = '/search_page';

  static const String searchResultScreen = '/search_result_screen';

  static const String notFoundScreen = '/not_found_screen';

  static const String downloadedPage = '/downloaded_page';

  static const String downloadedTabContainerPage =
      '/downloaded_tab_container_page';

  static const String downloadingPage = '/downloading_page';

  static const String emptyStateDownloadedPage = '/empty_state_downloaded_page';

  static const String emptyStateDownloadedTabContainerScreen =
      '/empty_state_downloaded_tab_container_screen';

  static const String emptyStateDownloadingPage =
      '/empty_state_downloading_page';

  static const String savedPage = '/saved_page';

  static const String selectSavedScreen = '/select_saved_screen';

  static const String savedEmptyScreen = '/saved_empty_screen';

  static const String profilePage = '/profile_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationScreen = '/notification_screen';

  static const String noNotificationScreen = '/no_notification_screen';

  static const String historyScreen = '/history_screen';

  static const String noHistoryScreen = '/no_history_screen';

  static const String settingScreen = '/setting_screen';

  static const String languageScreen = '/language_screen';

  static const String helpScreen = '/help_screen';

  static const String searchHelpScreen = '/search_help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpScreen: SignUpScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        otpVerificationScreen: OtpVerificationScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        resetPasswordSuccessScreen: ResetPasswordSuccessScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        categoryComedyScreen: CategoryComedyScreen.builder,
        episodeTabContainerScreen: EpisodeTabContainerScreen.builder,
        choosePlanScreen: ChoosePlanScreen.builder,
        paymentMethodScreen: PaymentMethodScreen.builder,
        homeRecentlyWatchedScreen: HomeRecentlyWatchedScreen.builder,
        searchResultScreen: SearchResultScreen.builder,
        notFoundScreen: NotFoundScreen.builder,
        emptyStateDownloadedTabContainerScreen:
            EmptyStateDownloadedTabContainerScreen.builder,
        selectSavedScreen: SelectSavedScreen.builder,
        savedEmptyScreen: SavedEmptyScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        notificationScreen: NotificationScreen.builder,
        noNotificationScreen: NoNotificationScreen.builder,
        historyScreen: HistoryScreen.builder,
        noHistoryScreen: NoHistoryScreen.builder,
        settingScreen: SettingScreen.builder,
        languageScreen: LanguageScreen.builder,
        helpScreen: HelpScreen.builder,
        searchHelpScreen: SearchHelpScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
