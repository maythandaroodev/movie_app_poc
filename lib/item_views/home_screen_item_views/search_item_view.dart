import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../screens/search_screen.dart';
class SearchItemView extends StatelessWidget {
  const SearchItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.only(left: 15,right: 15,top: 60),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 280,
            height: 60,
            decoration: BoxDecoration(
                color: kSearchBoxColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Search movies...',style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()));
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.search,color: Colors.white,size: 35,),
            ),
          )
        ],
      ),
    );
  }
}