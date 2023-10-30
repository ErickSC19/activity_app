import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.filled(
              isSelected: selected,
              icon: const Icon(Icons.play_arrow_rounded, color: Color(0xffffffff)),
              selectedIcon: const Icon(Icons.pause, color: Color(0xffffffff)),
              onPressed: () {
                setState(() {
                  print(selected);
                  selected = !selected;
                });
              },
              style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(200, 200)),
                  shadowColor: MaterialStatePropertyAll(Color.fromRGBO(253, 148, 20, 1))),
            ),
          ],
        ),
      ],
    );
  }
}
