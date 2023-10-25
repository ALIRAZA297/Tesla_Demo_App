import 'package:flutter/material.dart';

Widget createButtons() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      CustomTextButton('A', Colors.blue,),
      CustomIconButton(Icons.waves_outlined, Colors.black12),
      CustomIconButton(Icons.ac_unit_outlined, Colors.black12),
      CustomIconButton(Icons.timer_outlined, Colors.black12),
    ],
  );
}

class CustomTextButton extends StatefulWidget {
  final String label;
  final Color color;

  const CustomTextButton(this.label, this.color, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextButtonState createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool _isPressed = false;

  void _toggleButton() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0, right: 15),
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),shadowColor: Colors.grey,
          fixedSize: const Size(60, 60),
          foregroundColor: Colors.white54,
          shape: CircleBorder(side: BorderSide(color:Colors.grey.shade900),
          ),
          backgroundColor: _isPressed ? Colors.black12 : widget.color,
        ),
        onPressed: _toggleButton,
        child: Text(widget.label),
      ),
    );
  }
}

class CustomIconButton extends StatefulWidget {
  final IconData icon;
  final Color color;

  const CustomIconButton(this.icon, this.color, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool _isPressed = false;

  void _toggleButton() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:25.0),
      child: IconButton(
        icon: Icon(
          widget.icon,
        ),
        onPressed: _toggleButton,
        style: ButtonStyle( fixedSize: const MaterialStatePropertyAll(Size(60,60)),
          foregroundColor: const MaterialStatePropertyAll(Colors.white54),
          backgroundColor:
              MaterialStatePropertyAll(_isPressed ? Colors.blue : widget.color),
          shape: MaterialStatePropertyAll(
            CircleBorder(side: BorderSide(color: Colors.grey.shade900),
            ),
          ),
        ),
      ),
    );
  }
}
