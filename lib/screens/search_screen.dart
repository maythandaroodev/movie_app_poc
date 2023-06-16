import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';
import 'package:movie_app_poc/constants/dimens.dart';

import '../constants/strings.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: kSP60x,right: kSP280x),
            child: TextButton.icon(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined,color: kSecondaryColor,),
                label: const Text(kBackText,style: TextStyle(
                  color: kSecondaryColor,
                ),)),
          ),
          Row(
            children: [
              const SizedBox(width: kSP10x,),
              Expanded(
                  child: TextField(
                autofocus: true,
                style: const TextStyle(
                  color: kWhiteColor
                ),
                    decoration: InputDecoration(
                      hintText: kHintText,
                      hintStyle: const TextStyle(
                        color: kGreyColor,
                        fontSize: kFS18x,
                      ),
                      filled: true,
                      fillColor: kSearchBoxColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(kSearchBoxBorderRadius),
                        borderSide: BorderSide.none
                      ),
                      )
                    ),
              ),
              const SizedBox(width: kSP20x,),
              Container(
                width: kSearchBtnWidth,
                height: kSearchBtnHeight,
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(kSearchBtnRadius)
                ),
                child: const Icon(Icons.search,color: kWhiteColor,size: kSearchIconSize,),
              ),
              const SizedBox(width: kSP10x,),
            ],
          )
        ],
      ),
    );
  }
}
