import 'package:flutter/material.dart';
import 'package:flutter_application_1/room_info.dart';

class InfoState {
  static TextEditingController tokenController = TextEditingController();
  static TextEditingController ecwURLController = TextEditingController();
  static TextEditingController roomNameController = TextEditingController();
  static Map<String, RoomInfo> vltpList = {};
  static RoomInfo? selectedChoice = RoomInfo("", "", "");
  static String permanentUrl =
      "https://192.168.1.254/api/login?NortxeSession=r.u3S0qm09SzUISnKLcOUjheQZ.sl&redirect=https://192.168.1.254/web/vtlp/b3ef490f-ea44-40cf-ae3a-b82326e91b5b/index.html#/main";

  static String getUrl() {
    int? index = selectedChoice?.url.indexOf("/web/vtlp/");
    String? host = "";
    if (index != -1) {
      host = selectedChoice?.url.substring(0, index);
    }
    return "$host/api/login?NortxeSession=${selectedChoice?.token}&redirect=${selectedChoice?.url}";
  }
}
