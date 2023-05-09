// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_smaple/controller/product_controller.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
                        val!.name = "نوشابه نمیخوری";
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
                      Get.back();
                    },
                    child: const Icon(CupertinoIcons.back))
              ],
            )
          ],
        ),
      ),
    );
  }
}
