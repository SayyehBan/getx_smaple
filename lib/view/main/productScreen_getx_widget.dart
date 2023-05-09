// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_smaple/controller/product_controller.dart';

// ignore: must_be_immutable
class ProductScreenGetxWidget extends StatelessWidget {
  const ProductScreenGetxWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
              autoRemove: true,
              dispose: (state) {
                state.dispose();
              },
              init: ProductController(),
              builder: (ProductController productController) {
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
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.find<ProductController>().productModel.update((val) {
                        val!.name = "نوشابه نمیخوری";
                        val.price = 85000;
                        val.off = "10%";
                      });
                    },
                    child: const Icon(CupertinoIcons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
