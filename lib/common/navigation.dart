import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../injection.dart';
import '../presentation/presentation.dart';

Navigation navigation = getIt.get<Navigation>();

class RouteMissingArgsFailure implements Exception {}

abstract class RouterModule {
    Map<String, MaterialPageRoute> getRoutes(RouteSettings settings);
}

class AppRouter extends RouterModule {
    AppRouter();

    static const String splash = '/splash';
    static const String counter = '/counter';
    static const String downloadYoutube = '/downloadYoutube';
    static const String welcome = '/welcome';
    static const String signIn = '/signIn';
    static const String home = '/home';
    static const String otp = '/otp';
    static const String main = '/main';
    static const String information = '/information';
    static const String termAndCondition = '/termAndCondition';
    static const String profile = '/profile';
    static const String profilePhonePage = '/profilePhonePage';
    static const String profileCmtPage = '/profileCmtPage';
    static const String profileBankPage = '/profileBankPage';
    static const String setting = '/setting';
    static const String settingDetail = '/settingDetail';
    static const String accountInfo = '/account_info';
    static const String recharge = '/recharge';
    static const String detailsNotification = '/detailsNotification';
    static const String html = '/html';
    static const String rechargeDetail = '/recharge_detail';
    static const String registration = '/registration';
    static const String registrationOTP = '/registrationOTP';
    static const String detailBds = '/detailBds';
    static const String detailsBuyofUser = '/detailsBuyofUser';
    static const String detailsSellofUser = '/detailsSellofUser';
    static const String forgotPass = '/forgotPass';
    static const String forgotPassOtp = '/forgotPassOtp';
    static const String withdraw = '/withdraw';
    static const String createWithdraw = '/createWithdraw';
    static const String withdrawDetail = '/withdrawDetail';
    static const String investmentStatic = '/investmentStatic';
    static const String transactionHistory = '/transactionHistory';
    static const String buyBds = '/buyBds';
    static const String sellBds = '/sellBds';
    static const String listSellofUser = '/listSellofUser';
    static const String inAppWebView = '/inAppWebView';
    // static const String profilePhonePage = '/profilePhonePage';
    // ProfilePhonePage

    @override
    Map<String, MaterialPageRoute> getRoutes(RouteSettings settings) {
        return {
            AppRouter.splash: MaterialPageRoute(
                builder: (context) => const VideoApp(), settings: settings),
            AppRouter.counter: MaterialPageRoute(
                builder: (context) => CounterView(), settings: settings),
            // AppRouter.downloadYoutube: MaterialPageRoute(
            //     builder: (context) => Dl_youtube(), settings: settings),
            // AppRouter.welcome: MaterialPageRoute(
            //     builder: (context) => const WelcomePage(), settings: settings),
            // AppRouter.home: MaterialPageRoute(
            //     builder: (context) => const HomePage(), settings: settings),
            // AppRouter.signIn: MaterialPageRoute(
            //     builder: (context) => const SignInPage(), settings: settings),
            // AppRouter.main: MaterialPageRoute(
            //     builder: (context) => const MainPage(), settings: settings),
            // AppRouter.otp: MaterialPageRoute(
            //     builder: (context) =>
            //         OtpPage(argument: settings.arguments as OtpArgument),
            //     settings: settings),
            //
            // //personal page
            // AppRouter.information: MaterialPageRoute(
            //     builder: (context) => InformationPage(personalModel: settings.arguments as PersonalModel,), settings: settings),
            // AppRouter.termAndCondition: MaterialPageRoute(
            //     builder: (context) => TermAndConditionPage(isShowButton: settings.arguments as bool,),settings: settings),
            // AppRouter.profile: MaterialPageRoute(
            //     builder: (context) => const ProfilePage(), settings: settings),
            // AppRouter.profilePhonePage: MaterialPageRoute(
            //     builder: (context) => ProfilePhonePage(),
            //     settings: settings),
            // AppRouter.profileCmtPage: MaterialPageRoute(
            //     builder: (context) => const ProfileCmtPage(),
            //     settings: settings),
            // AppRouter.profileBankPage: MaterialPageRoute(
            //     builder: (context) => const ProfileBankCardPage(),
            //     settings: settings),
            // AppRouter.setting: MaterialPageRoute(
            //     builder: (context) => const SettingPage(), settings: settings),
            // AppRouter.settingDetail: MaterialPageRoute(
            //     builder: (context) => SettingDetailPage(codePageName: settings.arguments as String), settings: settings),
            //
            //
            // AppRouter.accountInfo: MaterialPageRoute(
            //     builder: (context) => AccountInfoPage(id: settings.arguments as int),
            //     settings: settings),
            // AppRouter.recharge: MaterialPageRoute(
            //     builder: (context) => const RechargePage(), settings: settings),
            // AppRouter.detailsNotification: MaterialPageRoute(
            //     builder: (context) =>  DetailsNotificationPage(id: settings.arguments as int), settings: settings),
            // AppRouter.html: MaterialPageRoute(
            //     builder: (context) =>  HtmlPage(data: settings.arguments as HtmlArgument), settings: settings),
            // AppRouter.rechargeDetail: MaterialPageRoute(
            //     builder: (context) =>  RechargeDetailPage(id: settings.arguments as int), settings: settings),
            // AppRouter.registration: MaterialPageRoute(
            //     builder: (context) => const RegistrationPage(), settings: settings),
            // AppRouter.registrationOTP: MaterialPageRoute(
            //     builder: (context) =>
            //         RegistrationOtpPage(registrationOtpArgument: settings.arguments as RegistrationOtpArgument),
            //     settings: settings),
            //
            // AppRouter.detailBds: MaterialPageRoute(
            //     builder: (context) => DetailBdsPage(id: (settings.arguments as DetailBdsArgument).id,isSellPage: (settings.arguments as DetailBdsArgument).isSellPage,),
            //     settings: settings),
            // AppRouter.detailsBuyofUser: MaterialPageRoute(
            //     builder: (context) =>  DetailsBuyUser(id: settings.arguments as int),
            //     settings: settings),
            // AppRouter.detailsSellofUser: MaterialPageRoute(
            //     builder: (context) =>  DetailsSellUser(id: settings.arguments as int,),
            //     settings: settings),
            // AppRouter.forgotPass: MaterialPageRoute(
            //     builder: (context) => const FogotPassPage(),
            //     settings: settings),
            // AppRouter.forgotPassOtp: MaterialPageRoute(
            //     builder: (context) =>
            //         ForgotPassOtpPage(forgotPassArguments: settings.arguments as ForgotPassArguments),
            //     settings: settings),
            // AppRouter.withdraw: MaterialPageRoute(
            //     builder: (context) => const WithdrawPage(), settings: settings),
            // AppRouter.withdrawDetail: MaterialPageRoute(
            //     builder: (context) => WithdrawDetailPage(id: settings.arguments as int), settings: settings),
            // AppRouter.createWithdraw: MaterialPageRoute(
            //     builder: (context) => const CreateWithdrawPage(), settings: settings),
            // AppRouter.investmentStatic: MaterialPageRoute(
            //     builder: (context) => const InvestmentStaticPage(), settings: settings),
            // AppRouter.transactionHistory: MaterialPageRoute(
            //     builder: (context) => const TransactionHistoryPage(), settings: settings),
            // AppRouter.buyBds: MaterialPageRoute(
            //     builder: (context) => const BuyBdsPage(), settings: settings),
            // AppRouter.sellBds: MaterialPageRoute(
            //     builder: (context) => const SellBdsPage(), settings: settings),
            // AppRouter.listSellofUser: MaterialPageRoute(
            //     builder: (context) =>   const ListSellOfUserWidget(), settings: settings),
            // AppRouter.inAppWebView: MaterialPageRoute(
            //     builder: (context) => InAppWebViewPage(argument: settings.arguments as InAppWebViewArgument), settings: settings),
        };
    }
}

abstract class Navigation {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    Future<dynamic> navigateTo(String routeName, {dynamic arguments});

    Future<dynamic> replaceTo(String routeName, {dynamic arguments});

    Future<dynamic> removeUntil(String routeName, {dynamic arguments});

    void popUntil(String routeName, {dynamic arguments});

    void goBack<T extends Object?>([T? result]);

    bool canPop();
}

class NavigationImpl extends Navigation {
    @override
    Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
        return navigatorKey.currentState!
            .pushNamed(routeName, arguments: arguments);
    }

    @override
    Future<dynamic> replaceTo(String routeName, {dynamic arguments}) {
        return navigatorKey.currentState!
            .pushReplacementNamed(routeName, arguments: arguments);
    }

    @override
    Future<dynamic> removeUntil(String routeName, {dynamic arguments}) {
        return navigatorKey.currentState!.pushNamedAndRemoveUntil(
            routeName, (Route<dynamic> route) => false,
            arguments: arguments);
    }

    @override
    void goBack<T extends Object?>([T? result]) {
        return navigatorKey.currentState!.pop<T>(result);
    }

    @override
    void popUntil(String routeName, {arguments}) {
        return navigatorKey.currentState!
            .popUntil((route) => route.settings.name == routeName);
    }

    @override
    bool canPop() {
        return navigatorKey.currentState!.canPop();
    }
}

class DetailBdsArgument{
    final int id;
    final bool? isSellPage;

    DetailBdsArgument({required this.id, this.isSellPage});

}
