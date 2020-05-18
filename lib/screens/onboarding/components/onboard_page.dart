import 'package:flutter/material.dart';
import 'package:onboarding/screens/onboarding/model/onboard_page_model.dart';
import 'drawer_paint.dart';

class OnboardPage extends StatefulWidget {
  final OnboardPageModel pageModel;

  const OnboardPage({Key key, this.pageModel}) : super(key: key);

  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  _nextButtonPressed() {
    print('next button pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: widget.pageModel.primeColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Image.asset(widget.pageModel.imagePath),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  height: 250.0,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          widget.pageModel.caption,
                          style: TextStyle(
                            fontSize: 24.0,
                            letterSpacing: 1,
                            color:
                                widget.pageModel.accentColor.withOpacity(0.8),
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          widget.pageModel.subhead,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: widget.pageModel.accentColor,
                            letterSpacing: 1,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          widget.pageModel.description,
                          style: TextStyle(
                            fontSize: 18.0,
                            color:
                                widget.pageModel.accentColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: CustomPaint(
            painter: DrawerPaint(
              curveColor: widget.pageModel.accentColor,
            ),
            child: Container(
              width: 50.0,
              height: double.infinity,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: widget.pageModel.primeColor,
                        size: 32.0,
                      ),
                      onPressed: _nextButtonPressed,
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
