import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gpo/widget/app_color.dart';


class WidgetUtil {
  static WidgetUtil? _instance;

  WidgetUtil._() {}

  factory WidgetUtil() {
    if (_instance == null) {
      _instance = new WidgetUtil._();
    }
    // since you are sure you will return non-null value, add '!' operator
    return _instance!;
  }

  static int rotateH() {
    return 1;
  }

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
  

  // static Widget servicesLottie() {
  //   return Lottie.asset('assets/images/services.json',
  //       repeat: true, reverse: true, animate: true, height: 120);
  // }

 
}
