import 'package:flutter/material.dart';
import 'package:mobile_insurance/models/plan_suggestion_model.dart';
import 'package:mobile_insurance/ui/plan_suggestins_card.dart';
import 'package:mobile_insurance/ui/section_header.dart';
import 'package:mobile_insurance/utils/test_data.dart';
import 'package:mobile_insurance/utils/theme_color.dart';

class PlanSuggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              SectionHeader(
                leftTitle: "Insurance Plan Suggestions",
                leftFontSize: 20, onPressed: () {  },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  "Another plan suggestions based on your profile Information",
                  style: TextStyle(
                      fontSize: 12,
                      color: ThemeColor.textColorDark.withAlpha(150)),
                ),
              ),
              Column(
                children : planSuggestions.map<Widget>((e){
                  return Container(
                    margin: EdgeInsets.symmetric(vertical :8),
                    child: PlanSuggestionCard(PlanSuggestionModel.fromJson(e)));
                }).toList()
              )

            ],
          ),
        );
      },
    );
  }
}
