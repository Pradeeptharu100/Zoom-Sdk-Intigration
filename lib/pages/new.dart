import 'package:flutter/material.dart';
import 'package:flutter_application_1/get_x/resut_tab_contoller.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

class DTSolutionFabButton extends StatelessWidget {
  DTResultFabController controller = Get.put(DTResultFabController());

  DTSolutionFabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      spacing: 10,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 24.0),
      visible: true,
      closeManually: true,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.3,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      backgroundColor: Colors.amber,
      foregroundColor: Colors.white,
      elevation: 8.0,
      shape: const CircleBorder(),
      children: [
        SpeedDialChild(
            child: const Icon(Icons.menu),
            labelWidget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const Text(
                "Ask in discussion",
              ),
            ),
            backgroundColor: Colors.yellow,
            elevation: 8,
            shape: const CircleBorder()),
        SpeedDialChild(
            child: const Icon(Icons.share),
            labelWidget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const Text(
                "Share this question",
              ),
            ),
            backgroundColor: Colors.amber,
            elevation: 8,
            shape: const CircleBorder())
      ],
    );
  }
}
