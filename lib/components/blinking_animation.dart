import 'package:flutter/material.dart';

class BlinkingAnimation extends StatefulWidget {
  final List<Widget> children;
  BlinkingAnimation({@required this.children});

  @override
  _BlinkingAnimationState createState() => _BlinkingAnimationState();
}

class _BlinkingAnimationState extends State<BlinkingAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int _currentWidget = 0;
  int _count = 0;
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        ++_count;
        setState(() {
          if (++_currentWidget == widget.children.length) {
            _currentWidget = 0;
          }
        });
        _count == 8 ? _controller.reset() : _controller.forward(from: 0.0);
      }
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: widget.children[_currentWidget]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
