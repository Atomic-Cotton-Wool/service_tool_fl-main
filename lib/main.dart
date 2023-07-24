import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'model/button/key_sv_tool.dart';
import 'widgets/widgetBtn/button_keypad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        fontFamily: GoogleFonts.rubik().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Material(
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  // State<MyHomePage> createState() => _MyHomePageState();
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePageState extends State<MyHomePage> {
  int _groupValue = 0;
  final _textGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: NeumorphicTheme.accentColor(context),
        title: const Text('Flutter'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 230),
            Neumorphic(
              style: const NeumorphicStyle(
                depth: -2,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: GridView.count(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                crossAxisCount: 4,
                children: <Widget>[
                  NeumorphicButton(
                    padding: const EdgeInsets.all(4),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          alignment: Alignment.center,
                          child: Text(
                            'MOD',
                            textScaleFactor: constraints.maxWidth / 45,
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.rubik().fontFamily,
                            ),
                          ),
                        );
                      },
                    ),
                    onPressed: () {
                      if (_groupValue == 1) {
                        setState(() {
                          _groupValue = 0;
                        });
                      }
                    },
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(4),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          alignment: Alignment.center,
                          child: Text(
                            '7',
                            textScaleFactor: constraints.maxWidth / 20,
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.rubik().fontFamily,
                            ),
                          ),
                        );
                      },
                    ),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(4),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          alignment: Alignment.center,
                          child: Text(
                            '8',
                            textScaleFactor: constraints.maxWidth / 20,
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.rubik().fontFamily,
                            ),
                          ),
                        );
                      },
                    ),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                  NeumorphicRadio(
                    style: NeumorphicRadioStyle(
                      selectedDepth: -2,
                      unselectedDepth: 3,
                      selectedColor: Colors.blue[200],
                    ),
                    padding: const EdgeInsets.all(2),
                    groupValue: _groupValue,
                    value: 1,
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                          alignment: Alignment.center,
                          child: Text(
                            'SHIFT',
                            textScaleFactor: constraints.maxWidth / 48,
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.rubik().fontFamily,
                            ),
                          ),
                        );
                      },
                    ),
                    onChanged: (value) => {
                      setState(() {
                        _groupValue == 1 ? _groupValue = 0 : _groupValue = 1;
                      })
                    },
                  ),
                  NeumorphicButton(
                    style: const NeumorphicStyle(
                      depth: 2,
                    ),
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      if (_groupValue == 1) {
                        setState(() {
                          _groupValue = 0;
                        });
                      }
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Container(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight,
                              alignment: Alignment.bottomCenter,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                color: _groupValue == 1
                                    ? Colors.blue[200]
                                    : NeumorphicColors.background,
                                width: constraints.maxWidth,
                                height:
                                _groupValue == 1 ? constraints.maxWidth : 0,
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight,
                                  alignment: Alignment.center,
                                  child: _groupValue == 1
                                      ? Text(
                                    'OFF',
                                    textScaleFactor:
                                    constraints.maxWidth / 48,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.w900,
                                      fontFamily:
                                      GoogleFonts.rubik().fontFamily,
                                    ),
                                  )
                                      : Text(
                                    '0',
                                    textScaleFactor:
                                    constraints.maxWidth / 25,
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.w900,
                                      fontFamily:
                                      GoogleFonts.rubik().fontFamily,
                                    ),
                                  ));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  NeumorphicButton(
                    style: const NeumorphicStyle(
                      depth: 2,
                    ),
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      if (_groupValue == 1) {
                        setState(() {
                          _groupValue = 0;
                        });
                      }
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Container(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight,
                              alignment: Alignment.bottomCenter,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                color: _groupValue == 1
                                    ? Colors.blue[200]
                                    : NeumorphicColors.background,
                                width: constraints.maxWidth,
                                height:
                                _groupValue == 1 ? constraints.maxWidth : 0,
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight,
                                  alignment: Alignment.center,
                                  child: _groupValue == 1
                                      ? Text(
                                    'GO BACK',
                                    textScaleFactor:
                                    constraints.maxWidth / 48,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.w900,
                                      fontFamily:
                                      GoogleFonts.rubik().fontFamily,
                                    ),
                                  )
                                      : Text(
                                    'GO ON',
                                    textScaleFactor:
                                    constraints.maxWidth / 48,
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.w900,
                                      fontFamily:
                                      GoogleFonts.rubik().fontFamily,
                                    ),
                                  ));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  NeumorphicButton(
                    style: const NeumorphicStyle(
                      shadowDarkColor: Color(0xFF2D2F2F),
                      depth: 2,
                    ),
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      if (_groupValue == 1) {
                        setState(() {
                          _groupValue = 0;
                        });
                      }
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Container(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight,
                              alignment: Alignment.bottomCenter,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                color: _groupValue == 1
                                    ? Colors.blue[200]
                                    : NeumorphicColors.background,
                                width: constraints.maxWidth,
                                height:
                                _groupValue == 1 ? constraints.maxWidth : 0,
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                width: constraints.maxWidth,
                                height: constraints.maxHeight,
                                alignment: Alignment.center,
                                child: _groupValue == 1
                                    ? Text(
                                  'CLEAR',
                                  textScaleFactor:
                                  constraints.maxWidth / 48,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.w900,
                                    fontFamily:
                                    GoogleFonts.rubik().fontFamily,
                                  ),
                                )
                                    : Text(
                                  'ENTER',
                                  textScaleFactor:
                                  constraints.maxWidth / 48,
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.w900,
                                    fontFamily:
                                    GoogleFonts.rubik().fontFamily,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyHomePage extends State<MyHomePage> {
  final isEnableShift = ValueNotifier(false);
  String text = 'Label';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        toolbarHeight: 40,
        elevation: 2,
        title: const Text('Flutter'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonKeypad(
                keySvTool: KeySvTool.shiftFull(
                  id_2: '2',
                  label: '4',
                  scaleLabel: 20,
                  scaleLabShLeft: 60,
                  scaleLabShRight: 50,
                  labelShiftLeft: 'DISP \n ON',
                  labelShiftRight: 'A',
                  id_1: '1',
                ),
                isEnabledShift: isEnableShift,
                onPressed: (String value) {
                  isEnableShift.value = !isEnableShift.value;
                  setState(() {
                    text = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text(text,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                )),
            ],
          ),
        ),
      ),
    );
  }
}
