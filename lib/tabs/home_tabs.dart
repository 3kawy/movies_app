
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/utils/app_color.dart';
import 'package:movies_app/widget/custom_icon_button.dart';
import 'package:movies_app/widget/realse_item.dart';
import 'package:movies_app/widget/recommended_item.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CarouselSlider.builder(itemCount: 10,
        itemBuilder: (context,itemIndex, pageviewIndex) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),

            child: Stack(
              children: [
                Image.asset('assets/images/Image.png'),
                Container(
                  padding: const EdgeInsets.only(top: 60, left: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/imagell.png'),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SizedBox(
                          height: 150,
                        ),
                          Text(
                            'Dora and the lost city of gold',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),

                          Text(
                            '2019  PG-13  2h 7m',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                CustomIconButton(onPressed: () {})
              ],
            ),
          );
        },
          options: CarouselOptions(
          height: 250,
        autoPlay: true,
          viewportFraction: 1,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(seconds: 2)
      )),

          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: AppColor.iconColor,
            height: 187,
            padding: EdgeInsets.all(8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Releases',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(

                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 8,
                      ),
                      itemBuilder: (context, index) {
                        return ReleaseItem();
                      },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              color: AppColor.iconColor,
              width: double.infinity,


              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                        height: 5
                    ),
                    Expanded(

                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          width: 8,
                        ),
                        itemBuilder: (context, index) {
                          return RecommendedItem();
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 20,)


        ],
      ),
    );




  }
}
