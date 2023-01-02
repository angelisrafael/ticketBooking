import 'package:app_gringo_teste/utils/app_layout.dart';
import 'package:app_gringo_teste/utils/app_styles.dart';
import 'package:app_gringo_teste/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "NYC",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  ThickContainer(),
                  Expanded(
                      child: SizedBox(
                    height: 24,
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        print("The width is ${constraints.constrainWidth()}");
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(5, (index) => Text("-")),
                        );
                      },
                    ),
                  )),
                  ThickContainer(),
                  Expanded(child: Container()),
                  Text(
                    "London",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
