import 'dart:async';

import 'package:flutter_clean_arc_base/features/views/base/base_model.dart';

class AuthViewModel extends BaseModel {
  final StreamController<String> dynamicStreamController =
      StreamController<String>();
  int _counter = 1;
  late Timer timer;

  // Method to start generating data and add it to the stream at regular intervals
  void startGeneratingData() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      dynamicStreamController.add('Data $_counter');

      _counter++;
    });
  }
}
