import 'package:flutter/material.dart';
import 'package:mobile_insurance/ui/coverage_card.dart';
import 'package:mobile_insurance/ui/section_header.dart';
import 'package:mobile_insurance/utils/test_data.dart';

import '../../../utils/theme_color.dart';

class CoverageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;

        return Container(
         
          height: height,
          child: ListView(
             padding: const EdgeInsets.all(15),
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SectionHeader(leftTitle: "Coverages", onPressed: () {  },),
            ),
              GridView.count(
                physics: const ScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 3 / 4.3,
                children: coverageTitle.map<Widget>((e) {
                 
                  return Column(
                    children: <Widget>[
                      Container(
                        height: height * 0.24,
                        child: CoverageCard(
                          isShowLock: true,
                          cardHeight: height * 0.24,
                          icon: e['icon'],
                          iconHeigth: height * 0.12,
                          iconColor: true
                              ? ThemeColor.primaryColorLight
                              // ignore: dead_code
                              : ThemeColor.textColorLigthGray,
                          cardColor: true
                              ? ThemeColor.primaryColorLight
                              // ignore: dead_code
                              : ThemeColor.textColorLigthGray,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Coverage',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      )
                    ],
                  );
                }).toList(),
              )
            ],
          ),
        );
      },
    );
  }
}
