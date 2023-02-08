import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gpo/model/menu_model.dart';
import 'package:gpo/widget/app_color.dart';
import 'package:lottie/lottie.dart';

class WidgetUtil {
  static WidgetUtil? _instance;

  WidgetUtil._();

  factory WidgetUtil() {
    _instance ??= WidgetUtil._();
    // since you are sure you will return non-null value, add '!' operator
    return _instance!;
  }

  static int rotateH() {
    return 1;
  }

  // static List<MenuModel> menus = [
  //   MenuModel(title: 'PLI', image: Image.asset("assets/images/pli.png")),
  //   MenuModel(title: 'RPLI', image: Image.asset("assets/images/rpli.png")),
  //   MenuModel(
  //       title: 'Payment Bank', image: Image.asset("assets/images/bank.png")),
  //   MenuModel(title: 'PLI', image: Image.asset("assets/images/pli.png")),
  //   MenuModel(title: 'RPLI', image: Image.asset("assets/images/rpli.png")),
  //   MenuModel(
  //       title: 'Payment Bank', image: Image.asset("assets/images/bank.png")),
  //   MenuModel(title: 'PLI', image: Image.asset("assets/images/pli.png")),
  //   MenuModel(title: 'RPLI', image: Image.asset("assets/images/rpli.png")),
  //   MenuModel(
  //       title: 'Payment Bank', image: Image.asset("assets/images/bank.png")),
  // ];

  static List<MenuModel> menus = [
    MenuModel(title: 'PLI', image: "assets/images/pli.png"),
    MenuModel(title: 'RPLI', image: "assets/images/rpli.png"),
    MenuModel(title: 'Payment Bank', image: "assets/images/bank.png"),
    MenuModel(title: 'PLI', image: "assets/images/pli.png"),
    MenuModel(title: 'RPLI', image: "assets/images/rpli.png"),
    MenuModel(title: 'Payment Bank', image: "assets/images/bank.png"),
    MenuModel(title: 'PLI', image: "assets/images/pli.png"),
    MenuModel(title: 'RPLI', image: "assets/images/rpli.png"),
    MenuModel(title: 'Payment Bank', image: "assets/images/bank.png"),
  ];

  // getRating(String? serviceId) {
  //   var ratings = app.appController.serviceRatingsList
  //       .where((element) => element.serviceId!.contains(serviceId.toString()))
  //       .toList();
  //   if (ratings.isNotEmpty) {
  //     return ratings[0].rating.toString();
  //   } else {
  //     return "3";
  //   }
  // }

  static Widget loader() {
    return SpinKitCircle(
      color: appColor.accentColor,
    );
  }

  static Widget servicesLottie() {
    return Lottie.asset('assets/images/letter.json',
        repeat: true, reverse: true, animate: true, height: 120);
  }

}
