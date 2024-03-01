import 'package:flutter/material.dart';
import 'package:mobile_insurance/ui/section_header.dart';
import 'package:mobile_insurance/utils/test_data.dart';
import 'package:mobile_insurance/utils/theme_color.dart';

import '../../../ui/general_card.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ListView(
          padding: const EdgeInsets.all(15),
          children: descriptionData.map((e) {
            return Column(

              children: <Widget>[
                descriptionData.indexOf(e) %3==0?
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,3),
                  child: SectionHeader(leftTitle: "Descriptions", onPressed: () {  },),
                )
                :Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GeneralCard(
                    height: 0,
                    width: 0,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'title',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ThemeColor.primaryColorLight),
                              ),
                            ),
                            Text(
                              'description',
                              style: TextStyle(),
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}
