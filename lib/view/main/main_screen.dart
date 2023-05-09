import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_smaple/controller/product_controller.dart';
import 'package:getx_smaple/view/main/productScreen.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Column(
                children: [
                  Text(
                    "نام محصول : ${productController.productModel.value.name}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "قیمت محصول : ${productController.productModel.value.price}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "تخفیف محصول : ${productController.productModel.value.off}",
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      productController.productModel.update((val) {
                        val!.name = "چیپس نمیخوری";
                        val.price = 85000;
                        val.off = "10%";
                      });
                    },
                    child: const Icon(CupertinoIcons.add)),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(ProductScreen());
                    },
                    child: const Icon(CupertinoIcons.arrow_2_circlepath))
              ],
            )
          ],
        ),
      ),
    );
  }
}
