import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'base_controller.dart';

/// Base class to handle every view of page
abstract class BaseWidget<Controller extends BaseController>
    extends BasePage<Controller> {
  const BaseWidget({super.key});
}

abstract class BasePage<Controller extends BaseController>
    extends StatelessWidget {
  final BaseController? pageController;
  final bool autoDispose;

  const BasePage({
    this.pageController,
    this.autoDispose = true,
    Key? key,
  }) : super(key: null);
}

typedef ControlledBuilder<Controller extends BaseController> = Widget Function(
  BuildContext context,
  Controller controller,
);

class ControlledWidgetBuilder<Controller extends BaseController>
    extends StatelessWidget {
  final ControlledBuilder<Controller> builder;

  const ControlledWidgetBuilder({
    required this.builder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Controller>(
      builder: (BuildContext context, Controller controller, _) {
        controller.setContext(context);
        return builder(
          context,
          controller,
        );
      },
    );
  }
}

class BaseViewBuilder<Controller extends BaseController>
    extends StatelessWidget {
  const BaseViewBuilder({
    required this.controller,
    required this.builder,
    super.key,
  });

  final Controller controller;
  final ControlledBuilder<Controller> builder;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => controller,
      child: ControlledWidgetBuilder<Controller>(
        builder: (ctx, ctrl) {
          return LoaderOverlay(
            overlayWidgetBuilder: (progress) {
              return Center(
                child: Lottie.asset(
                  'lib/ui/assets/animations/loading.json',
                  height: 150,
                  width: 150,
                ),
              );
            },
            child: builder(ctx, ctrl),
          );
        },
      ),
    );
  }
}
