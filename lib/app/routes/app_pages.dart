import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/testimoni/views/testimoni_view.dart';
import '../modules/about/views/about_view.dart';
import '../modules/contact/views/contact_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => const HomeView()),
    GetPage(name: _Paths.DETAIL, page: () => const DetailView()),
    GetPage(name: _Paths.TESTIMONI, page: () => const TestimoniView()),
    GetPage(name: _Paths.ABOUT, page: () => const AboutView()),
    GetPage(name: _Paths.CONTACT, page: () => const ContactView()),
  ];
}
