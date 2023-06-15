import 'package:flutter/material.dart';
import 'package:movie_app_poc/widgets/biography_text_widget.dart';
import 'package:movie_app_poc/widgets/detail_title_widget.dart';
import 'package:movie_app_poc/widgets/info_text_widget.dart';
import 'package:movie_app_poc/widgets/movie_slider_widget.dart';

class InfoDetail extends StatelessWidget {
  const InfoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DetailTitleWidget(title: 'Biography',padding: EdgeInsets.only(top: 30,right: 260),),
            Divider(color: Colors.grey,thickness: 2,),
            BiographyTextWidget(),
            SizedBox(height: 30,),
            BiographyTextWidget(),
            SizedBox(height: 30,),
            BiographyTextWidget(),
            SizedBox(height: 20,),
            DetailTitleWidget(title: 'More Information',padding: EdgeInsets.only(top: 20,right: 175),),
            Divider(color: Colors.grey,thickness: 2,),
            Row(
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      InfoTextWidget(infoText: 'Place Of Birth',padding: EdgeInsets.only(top:10,right: 90),),
                      InfoTextWidget(infoText: 'Birthday',padding: EdgeInsets.only(top:30,right: 130),),
                      InfoTextWidget(infoText: 'Dead Day',padding: EdgeInsets.only(top:10,right: 120),),
                      InfoTextWidget(infoText: 'Gender',padding: EdgeInsets.only(top:10,right: 140),),
                      InfoTextWidget(infoText: 'Popularity',padding: EdgeInsets.only(top:10,right: 120),),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      children: [
                        InfoTextWidget(infoText: 'New Cross,London\nEngland,UK',padding: EdgeInsets.only(top:10,right: 30),),
                        InfoTextWidget(infoText: '1958-03-21',padding: EdgeInsets.only(top:10,right: 90),),
                        InfoTextWidget(infoText: '-',padding: EdgeInsets.only(top:10,right: 165),),
                        InfoTextWidget(infoText: 'Male',padding: EdgeInsets.only(top:10,right: 135),),
                        InfoTextWidget(infoText: '169.992',padding: EdgeInsets.only(top:10,right: 110),),
                      ],
                    ),
                  ),
                )
              ],
            ),
            DetailTitleWidget(title: "Known For", padding: EdgeInsets.only(top: 10,right: 250)),
            Divider(color: Colors.grey,thickness: 2,),
            MovieSliderWidget(),
          ],
        ),
      ),
    );
  }
}

