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
            CircleAvatar(
                backgroundColor: Color.fromRGBO(253, 148, 20, 1),
                radius: 75,
                child: IconButton(
                  iconSize: 100,
                  isSelected: selected,
                  color: Color(0xffffffff),
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                  ),
                  selectedIcon: const Icon(
                    Icons.pause,
                  ),
                  onPressed: () {
                    setState(() {
                      print(selected);
                      selected = !selected;
                    });
                  },
                )),
          ],
        ),
      ],
    );
  }
}
