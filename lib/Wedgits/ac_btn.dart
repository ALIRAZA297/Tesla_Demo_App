import 'package:flutter/material.dart';

class ACButton extends StatefulWidget {
  final bool isACOn;
  final Function(bool) onPressed;

  const ACButton({super.key, required this.isACOn, required this.onPressed});

  @override
  // ignore: library_private_types_in_public_api
  _ACButtonState createState() => _ACButtonState();
}

class _ACButtonState extends State<ACButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: widget.isACOn ? const Color(0xff11A8FD) : Colors.red,
        ),
        borderRadius: BorderRadius.circular(60),
        gradient: RadialGradient(
          focal: const Alignment(-1, -1),
          radius: 1.1,
          colors: [
            const Color(0xff005EA3),
            widget.isACOn ? const Color(0xff11A8FD) : Colors.red,
          ],
        ),
      ),
      child: IconButton(
        onPressed: () {
          widget.onPressed(!widget.isACOn);
        },
        icon: ImageIcon(
          const AssetImage("assets/images/power.png"),
          color: widget.isACOn ? const Color(0xFFE6E6E6) : Colors.black54,
        ),
      ),
    );
  }
}