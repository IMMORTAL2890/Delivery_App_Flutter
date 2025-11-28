import 'package:flutter/material.dart';
import 'package:food_delivery/Component/menu_card.dart';
import 'package:food_delivery/Constant/constant.dart';
import 'package:food_delivery/Controllers/menu_controller.dart';
import 'package:food_delivery/Models/menu_model.dart';
import 'package:get/get.dart';

//import 'package:get/instance_manager.dart';

class Menu extends StatelessWidget {
  Menu({super.key, required this.imgRepo, required this.items});

  final MenuDetailsController menuController = Get.put(MenuDetailsController());

  final List<ImageRepository> imgRepo;
  final List<MenuItem> items;

  //var items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (menuController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
    
        if (menuController.menu.value == null) {
          return Center(child: Text("No menu found"));
        }
    
        final menu = menuController.menu.value;
    
        return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            itemCount: menu?.catList!.length,
            itemBuilder: (context, index) {
              final category = menu?.catList![index];
                
              if (category?.itemList == null || category!.itemList!.isEmpty) {
                return SizedBox.shrink();
              }
                
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CATEGORY TITLE
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      category.catName ?? "No category found",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                
                  // ITEMS OF THIS CATEGORY
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: category.itemList!.length,
                    itemBuilder: (context, itemIndex) {
                      final item = category.itemList![itemIndex];
                
                      //if (item == null) return SizedBox.shrink();
                
                      return MenuCard(
                        name: item.name ?? "",
                        desc: desc(item.posItemId),
                        price: item.p1 ?? 0,
                        image: getImage(item.posItemId),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        );
      }),
    );
  }

  String getImage(String? img) {
    final match = imgRepo.firstWhere(
      (e) => e.posItemId == img,
      orElse: () => ImageRepository(),
    );

    // print("item.img = ${img}");
    // print("imgRepo images = ${imgRepo.map((e) => e.posItemImage).toList()}");

    if (match.posItemImage == null) return "";

    return Constant.menuImgBaseUrl + match.posItemImage!;
  }

  String desc(String? img) {
    final match = imgRepo.firstWhere(
      (e) => e.posItemId == img,
      orElse: () => ImageRepository(),
    );

    return match.itemDesc ?? "";
  }
}
