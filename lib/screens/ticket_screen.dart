import 'package:app_gringo_teste/screens/ticket_view.dart';
import 'package:app_gringo_teste/utils/app_info_list.dart';
import 'package:app_gringo_teste/utils/app_layout.dart';
import 'package:app_gringo_teste/widgets/column_layout.dart';
import 'package:app_gringo_teste/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_styles.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headLineStyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(40)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: const EdgeInsets.only(left: 15, right: 16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "Flutter DB",
                      secondText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "5221 364869",
                      secondText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "364738 28274478",
                      secondText: "Number of E-ticket",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "B2SG28",
                      secondText: "Booking code",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/visa.png",
                                      scale: 8,
                                    ),
                                    Text(
                                      " *** 2462",
                                      style: Styles.headLineStyle3,
                                    )
                                  ],
                                ),
                                Gap(5),
                                Text(
                                  "Payment method",
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const AppColumnLayout(
                      firstText: "\$249.99",
                      secondText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ]),
            ),
            /*
            bar code
            */
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)))),
              margin: EdgeInsets.only(
                  left: AppLayout.getWidth(15), right: AppLayout.getWidth(16)),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: "https://github.com/angelisrafael",
                    drawText: false,
                    color: Styles.TextColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
