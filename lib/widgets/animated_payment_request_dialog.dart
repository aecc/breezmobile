import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:breez/theme_data.dart' as theme;

class ProceedPaymentAnimation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ProceedPaymentAnimationState();
  }
}

class _ProceedPaymentAnimationState extends State<ProceedPaymentAnimation> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> opacityAnimation;
  Animation<double> borderAnimation;
  Animation<RelativeRect> transitionAnimation;
  Animation<Color> colorAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    borderAnimation = Tween<double>(begin: 0.0, end: 8.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));
    opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));
    transitionAnimation = new RelativeRectTween(
        begin: new RelativeRect.fromLTRB(0.0, 276.0, 0.0, 374.0),
        end: new RelativeRect.fromLTRB(32.0, 246.0, 32.0, 206.0))
        .animate(controller);
    colorAnimation = new ColorTween(
      begin: theme.BreezColors.blue[500],
      end: theme.BreezColors.white[500],
    ).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //return Timer(Duration(seconds: 2), () => controller.reverse());
      } else if (status == AnimationStatus.dismissed) {
        //return Timer(Duration(seconds: 5), () => controller.forward());
      }
    });

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _CloseDialogCustomPainter(controller));
  }
}

// TODO
class _CloseDialogCustomPainter extends CustomPainter {
  final AnimationController _animationController;

  _CloseDialogCustomPainter(this._animationController);

  @override
  void paint(Canvas canvas, Size size) {

  }


  @override
  bool shouldRepaint(_CloseDialogCustomPainter oldDelegate) {
    return true;
  }
}
