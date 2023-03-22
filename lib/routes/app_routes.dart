import 'package:social_template/presentation/splash_screen/splash_screen.dart';
import 'package:social_template/presentation/splash_screen/binding/splash_binding.dart';
import 'package:social_template/presentation/login_screen/login_screen.dart';
import 'package:social_template/presentation/login_screen/binding/login_binding.dart';
import 'package:social_template/presentation/log_in_screen/log_in_screen.dart';
import 'package:social_template/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:social_template/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:social_template/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:social_template/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:social_template/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:social_template/presentation/notification_screen/notification_screen.dart';
import 'package:social_template/presentation/notification_screen/binding/notification_binding.dart';
import 'package:social_template/presentation/invite_friends_screen/invite_friends_screen.dart';
import 'package:social_template/presentation/invite_friends_screen/binding/invite_friends_binding.dart';
import 'package:social_template/presentation/discover_container_screen/discover_container_screen.dart';
import 'package:social_template/presentation/discover_container_screen/binding/discover_container_binding.dart';
import 'package:social_template/presentation/daily_new_screen/daily_new_screen.dart';
import 'package:social_template/presentation/daily_new_screen/binding/daily_new_binding.dart';
import 'package:social_template/presentation/trending_tab_container_screen/trending_tab_container_screen.dart';
import 'package:social_template/presentation/trending_tab_container_screen/binding/trending_tab_container_binding.dart';
import 'package:social_template/presentation/stories_screen/stories_screen.dart';
import 'package:social_template/presentation/stories_screen/binding/stories_binding.dart';
import 'package:social_template/presentation/trending_posts_screen/trending_posts_screen.dart';
import 'package:social_template/presentation/trending_posts_screen/binding/trending_posts_binding.dart';
import 'package:social_template/presentation/stories_and_tweets_screen/stories_and_tweets_screen.dart';
import 'package:social_template/presentation/stories_and_tweets_screen/binding/stories_and_tweets_binding.dart';
import 'package:social_template/presentation/search_screen/search_screen.dart';
import 'package:social_template/presentation/search_screen/binding/search_binding.dart';
import 'package:social_template/presentation/live_screen/live_screen.dart';
import 'package:social_template/presentation/live_screen/binding/live_binding.dart';
import 'package:social_template/presentation/for_you_tab_container_screen/for_you_tab_container_screen.dart';
import 'package:social_template/presentation/for_you_tab_container_screen/binding/for_you_tab_container_binding.dart';
import 'package:social_template/presentation/page_view_screen/page_view_screen.dart';
import 'package:social_template/presentation/page_view_screen/binding/page_view_binding.dart';
import 'package:social_template/presentation/comments_screen/comments_screen.dart';
import 'package:social_template/presentation/comments_screen/binding/comments_binding.dart';
import 'package:social_template/presentation/account_view_screen/account_view_screen.dart';
import 'package:social_template/presentation/account_view_screen/binding/account_view_binding.dart';
import 'package:social_template/presentation/account_details_screen/account_details_screen.dart';
import 'package:social_template/presentation/account_details_screen/binding/account_details_binding.dart';
import 'package:social_template/presentation/chat_screen/chat_screen.dart';
import 'package:social_template/presentation/chat_screen/binding/chat_binding.dart';
import 'package:social_template/presentation/friends_screen/friends_screen.dart';
import 'package:social_template/presentation/friends_screen/binding/friends_binding.dart';
import 'package:social_template/presentation/profile_screen/profile_screen.dart';
import 'package:social_template/presentation/profile_screen/binding/profile_binding.dart';
import 'package:social_template/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:social_template/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String notificationScreen = '/notification_screen';

  static const String inviteFriendsScreen = '/invite_friends_screen';

  static const String discoverContainerScreen = '/discover_container_screen';

  static const String discoverPage = '/discover_page';

  static const String dailyNewScreen = '/daily_new_screen';

  static const String trendingPage = '/trending_page';

  static const String trendingTabContainerScreen =
      '/trending_tab_container_screen';

  static const String storiesScreen = '/stories_screen';

  static const String trendingPostsScreen = '/trending_posts_screen';

  static const String storiesAndTweetsScreen = '/stories_and_tweets_screen';

  static const String searchScreen = '/search_screen';

  static const String liveScreen = '/live_screen';

  static const String forYouPage = '/for_you_page';

  static const String forYouTabContainerScreen =
      '/for_you_tab_container_screen';

  static const String streamPage = '/stream_page';

  static const String streamTabContainerPage = '/stream_tab_container_page';

  static const String pageViewScreen = '/page_view_screen';

  static const String commentsScreen = '/comments_screen';

  static const String accountViewScreen = '/account_view_screen';

  static const String accountDetailsScreen = '/account_details_screen';

  static const String messagesPage = '/messages_page';

  static const String chatScreen = '/chat_screen';

  static const String friendsScreen = '/friends_screen';

  static const String notificationsPage = '/notifications_page';

  static const String profileScreen = '/profile_screen';

  static const String detailedProfilePage = '/detailed_profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: inviteFriendsScreen,
      page: () => InviteFriendsScreen(),
      bindings: [
        InviteFriendsBinding(),
      ],
    ),
    GetPage(
      name: discoverContainerScreen,
      page: () => DiscoverContainerScreen(),
      bindings: [
        DiscoverContainerBinding(),
      ],
    ),
    GetPage(
      name: dailyNewScreen,
      page: () => DailyNewScreen(),
      bindings: [
        DailyNewBinding(),
      ],
    ),
    GetPage(
      name: trendingTabContainerScreen,
      page: () => TrendingTabContainerScreen(),
      bindings: [
        TrendingTabContainerBinding(),
      ],
    ),
    GetPage(
      name: storiesScreen,
      page: () => StoriesScreen(),
      bindings: [
        StoriesBinding(),
      ],
    ),
    GetPage(
      name: trendingPostsScreen,
      page: () => TrendingPostsScreen(),
      bindings: [
        TrendingPostsBinding(),
      ],
    ),
    GetPage(
      name: storiesAndTweetsScreen,
      page: () => StoriesAndTweetsScreen(),
      bindings: [
        StoriesAndTweetsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: liveScreen,
      page: () => LiveScreen(),
      bindings: [
        LiveBinding(),
      ],
    ),
    GetPage(
      name: forYouTabContainerScreen,
      page: () => ForYouTabContainerScreen(),
      bindings: [
        ForYouTabContainerBinding(),
      ],
    ),
    GetPage(
      name: pageViewScreen,
      page: () => PageViewScreen(),
      bindings: [
        PageViewBinding(),
      ],
    ),
    GetPage(
      name: commentsScreen,
      page: () => CommentsScreen(),
      bindings: [
        CommentsBinding(),
      ],
    ),
    GetPage(
      name: accountViewScreen,
      page: () => AccountViewScreen(),
      bindings: [
        AccountViewBinding(),
      ],
    ),
    GetPage(
      name: accountDetailsScreen,
      page: () => AccountDetailsScreen(),
      bindings: [
        AccountDetailsBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: friendsScreen,
      page: () => FriendsScreen(),
      bindings: [
        FriendsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
