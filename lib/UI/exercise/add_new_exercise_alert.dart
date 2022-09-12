import 'package:exerlog/UI/exercise/add_exercise_widget.dart';
import 'package:exerlog/UI/global.dart';
import 'package:exerlog/src/widgets/gradient_button.dart';
import 'package:exerlog/src/widgets/theme/theme_provider.dart';
import 'package:flutter/material.dart';

@Deprecated('This is going to be removed soon')
class AddExerciseAlert extends StatelessWidget {
  final ExerciseInputField nameWidget;
  final RaisedGradientButton addExercise;

  const AddExerciseAlert(
    this.addExercise,
    this.nameWidget,
  );
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      builder: (context, theme) {
        return Dialog(
          backgroundColor: theme.colorTheme.backgroundColorVariation,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: EdgeInsets.all(15),
            height: screenHeight * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Exercise",
                  style: mediumTitleStyleWhite,
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: nameWidget,
                ),
                Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.5,
                  child: addExercise,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
