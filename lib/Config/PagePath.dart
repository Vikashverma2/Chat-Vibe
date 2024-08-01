import 'package:chat_vibe/Pages/Auth/AuthPage.dart';
import 'package:get/get.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => Authpage(),
    transition: Transition.fadeIn,
  )
];
