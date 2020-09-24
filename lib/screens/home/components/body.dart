import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pestocafe/constants.dart';
import 'package:pestocafe/screens/home/components/recipe_bundel_card.dart';
// import 'package:recipe_app/models/RecipeBundel.dart';
// import 'package:recipe_app/size_config.dart';

import 'categories.dart';
// import 'recipe_bundel_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Categories(),
          Padding(
            padding: EdgeInsets.only(top: 10,),
            child: CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [1,2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: kTextLigntColor
                        ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          TopCarts(),
          // Expanded(
          //   child: Padding(
          //     padding:
          //     EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
          //     child: GridView.builder(
          //       itemCount: recipeBundles.length,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount:
          //         SizeConfig.orientation == Orientation.landscape ? 2 : 1,
          //         mainAxisSpacing: 20,
          //         crossAxisSpacing:
          //         SizeConfig.orientation == Orientation.landscape
          //             ? SizeConfig.defaultSize * 2
          //             : 0,
          //         childAspectRatio: 1.65,
          //       ),
          //       itemBuilder: (context, index) => RecipeBundelCard(
          //         recipeBundle: recipeBundles[index],
          //         press: () {},
          //       ),
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }
}

class TopCarts extends StatefulWidget {
  @override
  _TopCartsState createState() => _TopCartsState();
}

class _TopCartsState extends State<TopCarts> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
