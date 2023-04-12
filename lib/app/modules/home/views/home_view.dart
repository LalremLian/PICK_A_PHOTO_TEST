import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pick A Photo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => controller.image.value != null
                  ? Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.file(controller.image.value!,
                          width: 300, height: 300),
                    )
                  : const Text('Select an image')),
              ElevatedButton(
                onPressed: () => controller.pickImage(),
                child: const Text('Pick a Photo'),
              ),
            ],
          ),
        ));
  }
}
