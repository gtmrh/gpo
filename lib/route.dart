import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:gpo/screen/home.dart';
import 'package:gpo/screen/splashscreen.dart';
import 'package:gpo/widget/strings.dart';

class MyRoutes {
  static var routes = [
    GetPage(name: "/", page: () => const Splashscreen()),
    GetPage(name: HOME_SCREEN, page: () => const Home()),
  ];
}
