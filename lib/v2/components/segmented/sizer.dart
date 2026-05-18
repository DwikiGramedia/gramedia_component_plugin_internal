import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Sizer extends StatefulWidget {
  final Widget child;
  final Function onChange;

  const Sizer({super.key, required this.onChange, required this.child});

  @override
  State<Sizer> createState() => _SizerState();
}

class _SizerState extends State<Sizer> {
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(postFrameCallback);
    return Container(key: widgetKey, child: widget.child);
  }

  var widgetKey = GlobalKey();
  Size? oldSize;

  void postFrameCallback(_) {
    var context = widgetKey.currentContext;
    if (context == null) return;

    final renderObject = context.findRenderObject();
    if (renderObject is! RenderBox || !renderObject.hasSize) return;

    var newSize = renderObject.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    widget.onChange(newSize);
  }
}
