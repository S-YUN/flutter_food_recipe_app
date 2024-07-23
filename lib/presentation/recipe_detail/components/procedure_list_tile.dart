import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/procedure.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class ProcedureListTile extends StatelessWidget {
  final Procedure procedure;
  const ProcedureListTile({super.key, required this.procedure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(10)),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFFECECEC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: getHeight(10), horizontal: getWidth(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Step ${procedure.stepNum.toString()}',
                style: TextStyles.boldStyle(
                  getHeight(11),
                  const Color(0xFF121212),
                ),
              ),
              Text(
                procedure.content,
                style:
                    TextStyles.regularStyle(getHeight(11), ColorStyles.gray3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
