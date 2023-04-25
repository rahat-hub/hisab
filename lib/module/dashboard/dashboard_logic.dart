import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:get/get.dart';

import 'package:dio/dio.dart' as dio;
import 'package:hisab/provider/api_provider.dart';

class DashboardLogic extends GetxController {


  var itemData = [
    {
      "id": 1,
      "name": "নামাজের মধ্যে দোয়া",
      "image": const Icon(FlutterIslamicIcons.solidPrayer),
    },
    {
      "id": 2,
      "name": "অযুর নিয়ম",
      "image": const Icon(FlutterIslamicIcons.wudhu),
    },
    {
      "id": 3,
      "name": "রাতের আমল",
      "image": const Icon(FlutterIslamicIcons.crescentMoon),
    },
    {
      "id": 4,
      "name": "সকালের আমল",
      "image": const Icon(FlutterIslamicIcons.solidMinaret),
    },
    {
      "id": 5,
      "name": "কোরআন শরীফ",
      "image": const Icon(FlutterIslamicIcons.quran),
    },
    {
      "id": 6,
      "name": "বিশ্বের সুন্দর মসজিদ সমূহ",
      "image": const Icon(FlutterIslamicIcons.mosque),
    },
    {
      "id": 7,
      "name": "নামাজের ওয়াক্ত",
      "image": const Icon(FlutterIslamicIcons.sajadah),
    },
    {
      "id": 8,
      "name": "রাতে ঘুমানোর পূর্বের আমল",
      "image": const Icon(FlutterIslamicIcons.solidHadji),
    },
    // {
    //   "id": 9,
    //   "name": "নামাজের মধ্যে দোয়া",
    //   "image": "",
    // },
    // {
    //   "id": 10,
    //   "name": "নামাজের মধ্যে দোয়া",
    //   "image": "",
    // },
    // {
    //   "id": 11,
    //   "name": "নামাজের মধ্যে দোয়া",
    //   "image": "",
    // },
  ];

  var prayerTimeData = {};
  var prayerTimeDataToday = {};
  var prayerTimeDataTomorrow = {};

  List<Widget> dashboardViewWidget = <Widget>[].obs;


  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getPrayerTimeData();
    //await makeWidgets();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  getPrayerTimeData() async {
    dio.Response data = await ApiProvider().getPrayerTimeData(
      country: "india",
    );
    if(data.statusCode == 200){
      prayerTimeData.addAll(data.data);
    }
    prayerTimeDataToday.addAll(prayerTimeData["today"]);
    prayerTimeDataTomorrow.addAll(prayerTimeData["tomorrow"]);
  }

  makeWidgets(){
    for(int i = 0; i < itemData.length; i++) {
      dashboardViewWidget.add(const Text(""));
    }
  }
}
