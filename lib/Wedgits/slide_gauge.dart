// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeWithThumb extends StatefulWidget {
  const GaugeWithThumb({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GaugeWithThumbState createState() => _GaugeWithThumbState();
}

class _GaugeWithThumbState extends State<GaugeWithThumb> {
  final double _startValue = 18;
  double _endValue = 24;
  Color _tickColor = Colors.blue; 

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 18,
          maximum: 40,
          showLabels: false,
          showTicks: true,
          radiusFactor: 0.7,
          axisLineStyle: const AxisLineStyle(
            cornerStyle: CornerStyle.bothCurve,
            color: Colors.black12,
            thickness: 45,
          ),
          minorTickStyle: const MinorTickStyle(length: 0),
          majorTickStyle: MajorTickStyle(
            color: _tickColor, 
            thickness: 3,
            length: 15,
          ),
          ranges: [
            GaugeRange(
              startValue: _startValue,
              endValue: _endValue / 2,
              color: const Color(0xff262a2c),
              startWidth: 20,
              endWidth: 20,
            ),
          ],
          pointers: <GaugePointer>[
            RangePointer(
              value: _endValue,
              gradient: const SweepGradient(colors: [Color(0xff005EA3), Color(0xff11A8FD)]),
              width: 45,
              enableDragging: true,
              onValueChanged: (value) {
                setState(() {
                  _endValue = value;
                  if (_endValue < 25) {
                    _tickColor = Colors.blue; 
                  } else if (_endValue < 35) {
                    _tickColor = Colors.yellow; 
                  } else if(_endValue < 40){
                    _tickColor = Colors.red; 
                  }else{
                    _tickColor = Colors.blue; 
                  }
                });
              },
              onValueChangeEnd: (value) {
                setState(() {
                  _endValue = value;
                });
              },
              onValueChanging: (value) {
                if (value == _startValue && value == 40) {
                  _endValue = value as double;
                }
              },
            ),
            MarkerPointer(
              value: _endValue,
              markerHeight: 34,
              markerWidth: 34,
              markerType: MarkerType.circle,
              color: const Color(0xff262a2c),
              borderWidth: 2,
            ),
          ],
          annotations: [
            GaugeAnnotation(
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${_endValue.toInt()} °C',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    "Cooling...",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              positionFactor: 0.2,
            ),
          ],
        ),
      ],
    );
  }
}
