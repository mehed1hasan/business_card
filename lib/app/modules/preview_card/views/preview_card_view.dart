import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_card_controller.dart';

class PreviewCardView extends GetView<PreviewCardController> {
  const PreviewCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PreviewCardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PreviewCardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
