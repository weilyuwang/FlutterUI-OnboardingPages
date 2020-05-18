import 'package:flutter/material.dart';
import 'package:onboarding/screens/onboarding/components/onboard_page.dart';
import 'package:onboarding/screens/onboarding/data/onboard_page_data.dart';

class Onboarding extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView.builder(
        controller: pageController,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: onboardData.length,
        itemBuilder: (context, index) {
          return OnboardPage(
            pageController: pageController,
            pageModel: onboardData[index],
          );
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
