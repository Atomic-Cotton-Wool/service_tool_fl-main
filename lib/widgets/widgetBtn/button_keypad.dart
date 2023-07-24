import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../model/button/key_sv_tool.dart';

/// [ButtonKeypad] is a widget for keypad
class ButtonKeypad extends StatelessWidget {
  const ButtonKeypad(
      {Key? key,
      required this.keySvTool,
      required this.isEnabledShift,
      required this.onPressed})
      : super(key: key);

  final KeySvTool keySvTool;
  final String emptyLeft = '       \n       ';
  final String emptyRight = ' ';

  /// [isEnabledShift] is a bool that is true when the button is pressed
  final ValueListenable<bool> isEnabledShift;

  /// [textVariant] is a bool that is true when the button is pressed
  final _textStyleOrange = const TextStyle(
    color: Colors.deepOrange,
    fontWeight: FontWeight.w900,
    letterSpacing: 0.5,
  );

  /// [textAccent] is a bool that is true when the button is pressed
  final _textStyleWhite = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w900,
    letterSpacing: 0.5,
  );

  /// [onPressed] is called when the button is pressed
  final ValueSetter<String> onPressed;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      minDistance: -0.5,
      duration: 250.milliseconds,
      style: NeumorphicStyle(
        depth: 2,
        intensity: 1.5,
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.roundRect(
            const BorderRadius.all(Radius.circular(4))),
      ),
      padding: const EdgeInsets.all(0),
      onPressed: () => onPressed(
          isEnabledShift.value ? keySvTool.id_2 ?? '' : keySvTool.id_1 ?? ''),
      child: SizedBox(
        height: 48,
        width: 48,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Center(
                child: ValueListenableBuilder(
                  valueListenable: isEnabledShift,
                  builder: (context, value, child) {
                    return AnimatedContainer(
                      // curve: Curves.fastOutSlowIn,
                      duration: const Duration(milliseconds: 300),
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: isEnabledShift.value
                              ? GradientColors.blue
                              : [
                                  NeumorphicColors.background,
                                  NeumorphicColors.background
                                ],
                        ),
                      ),
                      child: Center(
                        child: isEnabledShift.value
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Text(keySvTool.labelShiftLeft ?? emptyLeft,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      textScaleFactor: constraints.maxWidth /
                                          keySvTool.scaleLabShLeft,
                                      style: _textStyleWhite),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  if (keySvTool.labelShiftRight != null)
                                    VerticalDivider(
                                      indent: constraints.maxWidth / 8,
                                      endIndent: constraints.maxWidth / 8,
                                      width: constraints.maxWidth / 15,
                                      color: Colors.deepOrange[300],
                                    ),
                                  if(keySvTool.labelShiftRight != null)
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  if(keySvTool.labelShiftRight != null)
                                  Text(
                                    keySvTool.labelShiftRight ?? emptyRight,
                                    textScaleFactor: constraints.maxWidth /
                                        keySvTool.scaleLabShRight,
                                    style: _textStyleWhite,
                                  ),
                                  const Spacer(
                                    flex: 2,
                                  ),
                                ],
                              )
                                .animate()
                                .scale(duration: 250.milliseconds)
                                .fade(delay: 200.milliseconds)
                            : Text(
                                keySvTool.label,
                                style: _textStyleOrange,
                                textScaleFactor:
                                    constraints.maxWidth / keySvTool.scaleLabel,
                              )
                                .animate()
                                .scale(duration: 260.milliseconds)
                                .fade(delay: 200.milliseconds),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
