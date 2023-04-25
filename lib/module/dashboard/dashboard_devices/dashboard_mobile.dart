import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/module/dashboard/dashboard_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           title: const Text("Dashboard"),
        ),
        body: Center(
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Text("City: ${controller.prayerTimeData["city"]}")),
                      const SizedBox(height: 5),
                      Expanded(child: Text("Date: ${controller.prayerTimeData["date"]}")),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Fajr Time: ${controller.prayerTimeDataToday["Fajr"]}"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sunrise Time: ${controller.prayerTimeDataToday["Sunrise"]}"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dhuhr Time: ${controller.prayerTimeDataToday["Dhuhr"]}"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Asr Time: ${controller.prayerTimeDataToday["Asr"]}"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Maghrib Time: ${controller.prayerTimeDataToday["Maghrib"]}"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Material(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Isha'a Time: ${controller.prayerTimeDataToday["Isha'a"]}"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              FloatingActionButton(
                onPressed: (){
                  print(controller.prayerTimeData);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardMobileLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: Column(
          children: [
            FloatingActionButton(
              onPressed: (){
                print(controller.prayerTimeData);
              },
              child: const Text("Tap To Show DATA"),
            ),
          ],
        ),
      ),
    );
  }
}