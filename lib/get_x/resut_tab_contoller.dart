import 'package:get/get.dart';

class DTResultFabController extends GetxController {
  final RxBool _isIconTapped = false.obs;

  bool get isIconTapped => _isIconTapped.value;

  updateIconTapped() {
    _isIconTapped(!isIconTapped);
  }
}
