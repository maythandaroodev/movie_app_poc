import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/dimens.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../screens/search_screen.dart';
class SearchItemView extends StatelessWidget {
  const SearchItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.only(left: kSP15x,right: kSP15x,top: kSP60x),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: kSearchBoxWidth,
            height: kSearchBoxHeight,
            decoration: BoxDecoration(
                color: kSearchBoxColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: kSP15x),
              child: Text(kHintText,style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ),
          const SizedBox(width: kSP20x,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()));
            },
            child: Container(
              width: kSearchBtnWidth ,
              height: kSearchBtnHeight,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.search,color: Colors.white,size: kSearchIconSize,),
            ),
          )
        ],
      ),
    );
  }
}