import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/send_feedback_controller.dart';

class SendFeedbackView extends GetView<SendFeedbackController> {
  const SendFeedbackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SendFeedbackView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SendFeedbackView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
