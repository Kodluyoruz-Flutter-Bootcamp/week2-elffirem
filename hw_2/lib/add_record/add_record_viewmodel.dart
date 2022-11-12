import 'package:flutter/material.dart';

class AddRecordViewmodel {
  static AddRecordViewmodel? _instance;
  static get instance {
    _instance ??= AddRecordViewmodel();
    return _instance;
  }

  List<String> recordList = [];
  void onPressed(
      {required BuildContext context,
      required String name,
      required TextEditingController controller}) {
    recordList.add(name);

    controller.clear();
  }
}
