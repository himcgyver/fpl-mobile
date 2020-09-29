import 'package:flutter/cupertino.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:fpl_mobile/services/static_main_data.dart';

class LoadingViewModel extends ChangeNotifier {
  final SharedMainData mainData = locator<SharedMainData>();

  Future<void> initData() async {
    await mainData.getData();
  }
}
