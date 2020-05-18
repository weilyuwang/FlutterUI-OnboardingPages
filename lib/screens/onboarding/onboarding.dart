import 'package:flutter/material.dart';
import 'package:onboarding/screens/onboarding/components/onboard_page.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return OnboardPage();
        },
      ),
      Container(
        // Act as a banner
        width: double.infinity,
        height: 70,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  'fun with',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.black,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
