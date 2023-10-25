import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class GradientSliderWidget extends StatefulWidget {
  const GradientSliderWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GradientSliderWidgetState createState() => _GradientSliderWidgetState();
}

class _GradientSliderWidgetState extends State<GradientSliderWidget> {
  double _sliderValue = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 1; i <= 5; i++)
                Text(
                  '$i',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7F8489),
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          ),
        ),
        FlutterSlider(
          selectByTap: true,
          handlerWidth: 28,
          handler: FlutterSliderHandler(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x59000000),
            ),
          ),
          values: [_sliderValue],
          min: 1,
          max: 5,
          onDragging: (handlerIndex, lowerValue, upperValue) {
            setState(() {
              _sliderValue = lowerValue;
            });
          },
          trackBar: const FlutterSliderTrackBar(
            inactiveTrackBar: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: AlignmentDirectional.bottomEnd,
                colors: [Color(0xFF7F8489), Color(0xFFFFFFFF)],
              ),
            ),
            activeTrackBar: BoxDecoration(
              gradient: SweepGradient(
                colors: [Color(0xff005EA3), Color(0xff11A8FD)],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
