import 'package:flutter/material.dart';

import '../models/plan_suggestion_model.dart';
import '../utils/theme_color.dart';
import 'coverage_card.dart';
import 'general_card.dart';

class PlanSuggestionCard extends StatelessWidget {
  final PlanSuggestionModel data;
  PlanSuggestionCard(this.data);

  @override
  Widget build(BuildContext context) {
    Color planColor = ThemeColor.gold;
    switch (data.playType) {
      case "gold":
        planColor = ThemeColor.gold;
        break;
      case "bronze":
        planColor = ThemeColor.bronze;
        break;
      default:
        planColor = ThemeColor.primaryColorLight;
    }
    return Container(
      child: GeneralCard(
          width: 0,
          height: 0,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
        children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.verified_user,
                        color: planColor,
                      ),
                      SizedBox(width: 5),
                      Text(data.thoughts!.toUpperCase(),
                      style: TextStyle(
                        fontSize :  12,
                        color : planColor,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                   SizedBox(height: 8),
                  Text(
                    data.header!,
                    style: TextStyle(
                        color: ThemeColor.textColorDark.withAlpha(150),
                        fontWeight: FontWeight.bold,
                         fontSize :  18,
                        ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    data.content!,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: ThemeColor.textColorLigthGray, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Coverages".toUpperCase(),
                    style: TextStyle(
                        color: ThemeColor.primaryColorLight,
                        // fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  Row(
                      children: data.coverage.map<Widget>((e) {
                    return CoverageCard(
                      cardColor: planColor,
                      iconColor: planColor,
                      icon: e, cardHeight: 0, iconHeigth: 0,
                    );
                  }).toList())
                ],
              ),
            ),
            Expanded(child:Image.asset(data.image!))
        ],
      ),
          )),
    );
  }
}
