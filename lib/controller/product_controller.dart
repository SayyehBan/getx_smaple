import 'package:get/get.dart';
import 'package:getx_smaple/model/productModel.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: "نوشابه", off: "50", price: 500).obs;
}
