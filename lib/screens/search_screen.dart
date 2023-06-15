import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60,right: 280),
            child: TextButton.icon(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined,color: kSecondaryColor,),
                label: const Text('Back',style: TextStyle(
                  color: kSecondaryColor,
                ),)),
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Expanded(
                  child: TextField(
                autofocus: true,
                style: TextStyle(
                  color: Colors.white
                ),
                    decoration: InputDecoration(
                      hintText: "Search movies...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      filled: true,
                      fillColor: kSearchBoxColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      )
                    ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.search,color: Colors.white,size: 35,),
              ),
              SizedBox(width: 10,),
            ],
          )
        ],
      ),
    );
  }
}
