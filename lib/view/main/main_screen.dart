import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "شمارنده : $counter",
                  style: const TextStyle(fontSize: 30),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      counter = counter + 1;
                    },
                    child: const Icon(CupertinoIcons.add)),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      counter = counter - 1;
                    },
                    child: const Icon(CupertinoIcons.minus))
              ],
            )
          ],
        ),
      ),
    );
  }
}
