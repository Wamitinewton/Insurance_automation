import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

import '../../../ui/boreder_textview.dart';
import '../../../ui/coverage_card.dart';
import '../../../ui/general_card.dart';
import '../../../ui/section_header.dart';
import '../../../ui/three_column_card.dart';
import '../../../utils/theme_color.dart';

class ContributionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    titleWidget(name, value, color) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: ThemeColor.textColorLigthGray,
                fontWeight: FontWeight.bold,
                fontSize: 13),
          ),
          SizedBox(height: 4.0),
          Text(
            value,
            style: TextStyle(
                color: color, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;
        return ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SectionHeader(leftTitle: "Contributions", onPressed: () {  },),
            ),
            GeneralCard(
              width: 0,
              height: 0,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                width: width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "PREMIUM AMOUNT PLANNED",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ThemeColor.textColorLigthGray,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: BorderedTextView(
                          icon: Icons.attach_money,
                          cardWidth: width,
                          cardColor: ThemeColor.primaryColorLight,
                          fontColor: ThemeColor.primaryColorLight,
                          text: "1,110,000",
                          textSize: 24,
                          padding: 8,
                          isShowIcon: true, cardHeight: 0, iconHeigth: 0,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(children: [
                          titleWidget("AVG MONTHLY CNTRBTN", "\$ 4,200",
                              ThemeColor.primaryColorDark),
                          Spacer(),
                          titleWidget("CONTRIBUTING SINCE", "JAN 2001",
                              ThemeColor.primaryColorLight),
                        ]),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 15),
              child: SectionHeader(
                leftTitle: "Current Employment",
                rigthTitle: "See History",
                onPressed: () {},
              ),
            ),
            GeneralCard(
              height: 2,
              width: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ThreeColumnCard(
                  child: Image.asset("assets/images/company.png"),
                  size: width * 0.1,
                  middleTitle: "TESLA CORPORATION",
                  middleSubTitle: "FEB 2016",
                  endTitle: "\$ 11,800",
                  endSubTitle: "Monthly Wage",
                  etColor: ThemeColor.primaryColorDark, mtColor: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 15),
              child: SectionHeader(
                leftTitle: "Contribution History",
                rigthTitle: "See History",
                onPressed: () {},
              ),
            ),
            GeneralCard(
              width: 2,
              height: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ThreeColumnCard(
                  child: CoverageCard(
                    icon: Icons.attach_money,
                    cardHeight: width * 0.2,
                    iconHeigth: width * 0.08,
                  ),
                  size: width * 0.15,
                  middleTitle: "AVG \$ 56,000",
                  middleSubTitle: "PER YEAR CALENDER",
                  endTitle: "216 MONTHS",
                  endSubTitle: "Contributions",
                  etColor: ThemeColor.primaryColorDark, mtColor: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: SectionHeader(
                leftTitle: "Premium Change", onPressed: () {  },
              ),
            ),
            GeneralCard(
                width: 0,
                height: 00,
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.call_made,
                          color: ThemeColor.primaryColorDark,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("2% Increase last year."),
                            SizedBox(height: 5),
                            Text(
                              "\$ 11,800 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: ThemeColor.primaryColorDark),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Sparkline(
                    fallbackHeight: 80,
                    fallbackWidth: width,
                    data: [1.0, 1.0, 1.0, 2.0, 2.0, 3, 3, 4, 4, 4, 5, 6, 6, 6],
                    fillMode: FillMode.below,
                    lineColor: ThemeColor.primaryColorDark,
                    fillGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      
                      colors: [
                        ThemeColor.primaryColorLight.withAlpha(100),
                        ThemeColor.primaryColorLight.withAlpha(50)
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                  child: InkWell(
                onTap: () {},
                child: Text(
                  "Download Contribution History Report",
                  style: TextStyle(
                    color: ThemeColor.primaryColorLight,
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                  ),
                ),
              )),
            )
          ],
        );
      },
    );
  }
}
