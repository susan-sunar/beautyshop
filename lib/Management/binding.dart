
import 'package:beautyshop/Management/favourate.dart';
import 'package:beautyshop/Management/management.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<Management>(Management());
    Get.put<Favorite>(Favorite());
  }

}