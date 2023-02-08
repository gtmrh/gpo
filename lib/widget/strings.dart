// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

//
const String APP = "app";
const String APP_NAME = "Chabhi";


//colors
const btnColor = Colors.blue;
const borderColor = Color.fromARGB(31, 26, 25, 25);
const textHintColor = Color.fromARGB(31, 26, 25, 25);

const textColor = Colors.black;

final pink = const Color(0xFFFACCCC);
final grey = const Color(0xFFF2F2F7);

//font
const textFont = "Roboto";

//fontsize
const double TextFont14 = 14;
const double TextFont16 = 16;
const double TextFont18 = 18;
const double TextFont20 = 20;
const double TextFont22 = 22;
const double TextFont24 = 24;
const double TextFont26 = 26;
const double TextFont28 = 28;
const double TextFont30 = 30;

//Routes
const INTRO_SCREEN = '/intro_screen';
const LOGIN_SCREEN = '/login';
const HOME_SCREEN = '/home';
const CONTACT_SCREEN = '/contactus';
const Service_Details_Screen = '/services';
const Service_Request_Screen = '/service_request';
const Thanks_Screen = '/thankspage';
const Search_Screen = '/search';

//constants Strings
const ALREADY_SIGNIN = "Already have an account?";

//API's
const BASE_URL = "https://chabhi.com/";
const Login_URL = "api/Auth/login";
const Signup_URL = "api/Auth/registration";
const City_URL = "api/Location/city";
const CheckMobileNo_URL = "api/Auth/checkmobile";
const Location_URL = "api/Location/location";
const State_URL = "api/Location/state";
const ServiceCat_URL = "api/Service/servicecategory";
const SubCat_URL = "api/Service/servicesubcategory";
const ServiceDetails_URL = "api/Service/servicedetails";
const BlogCat_URL = "api/Blog/blogcategory";
const BlogDetails_URL = "api/Blog/blogdetails";
const ServiceRating_URl = "api/Service/servicerating";
const Slider_URL = "api/Slider/slider";
const Reqst_Service = 'api/Order/order';
const Package = 'api/Others/subscriptionPackage';
const Offers = 'api/Others/offer';
const Testimonial = 'api/Others/testimonial';
const Search = 'api/Service/search';

String PARAM_STATUS_CODE = "status_code";
String PARAM_MESSAGE = "message";
String PARAM_API_KEY = "api_key";

int CODE_SUCCESS = 200;
int CODE_NO_INTERNET = 100;
int CODE_ERROR = 102;
int CODE_RESPONSE_NULL = 103;

bool isKeyboardOpened() {
  return MediaQuery.of(Get.context!).viewInsets.bottom != 0;
}

void hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

void dismissKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

void showSnackbar(String title, String msg) {
  Get.snackbar(title, msg, backgroundColor: Colors.black.withOpacity(0.3));
}

void dismissSnakbar() {
  ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
}
