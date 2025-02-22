// import 'dart:math';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Utils {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static String getRandomTime() {
    int time = Random().nextInt(12);
    String hour = ['AM', 'PM'][Random().nextInt(2)];
    return '${time < 10 ? '0$time' : time}:00 $hour';
  }

  /// To show popup error
  showErrorApiMessage({int code = 0, String message = ''}) async {
    var overlayContext = navigatorKey.currentState?.overlay?.context;
    if (overlayContext != null) {
      showDialog(
          barrierDismissible: true,
          context: overlayContext,
          builder: (context) => Dialog(
                  child: Container(
                height: 130,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    message,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              )));
    }
  }

  /// To show popup success
  showSuccess(
      {required String message,
      bool barrierDismissible = true,
      Function? onConfirm}) async {
    var overlayContext = navigatorKey.currentState?.overlay?.context;
    if (overlayContext != null) {
      showDialog(
          barrierDismissible: barrierDismissible,
          context: overlayContext,
          builder: (context) => Dialog(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Lottie.asset(
                      'lib/ui/assets/animations/success.json',
                      height: 100,
                      width: 100,
                    ),
                    if (message.isNotEmpty) ...[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        message,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                    SizedBox(
                      height: 20,
                    ),
                    if (onConfirm != null) ...[
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              onConfirm.call();
                            },
                            child: Text(
                              'Ok',
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            )),
                      )
                    ],
                  ],
                ),
              )));
    }
  }

  /// To show popup error
  showError(String message) async {
    var overlayContext = navigatorKey.currentState?.overlay?.context;
    if (overlayContext != null) {
      showDialog(
          barrierDismissible: true,
          context: overlayContext,
          builder: (context) => Dialog(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Lottie.asset(
                      'lib/ui/assets/animations/fail.json',
                      height: 150,
                      width: 150,
                    ),
                    if (message.isNotEmpty) ...[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        message,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )));
    }
  }
}
