import 'package:e_commerce_proejct/screens/search_results.dart';
import 'package:e_commerce_proejct/widgets/Text_form_field_widget.dart';
import 'package:e_commerce_proejct/widgets/Text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';

class Search extends StatelessWidget {
  final _lists = AllLists();

  Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 28),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextFormFieldWidget(
                        hintText: "Search Product",
                        isPasswordField: false,
                        prefixIcon: Icon(Icons.search_sharp),
                        suffix: Icon(Icons.clear,color: AppConstants.subTxtColor,),
                      ),
                    ),
                    SizedBox(width: 28),
                    Icon(
                      Icons.mic_none,
                      color: AppConstants.subTxtColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                thickness: 1,
                height: 0,
                color: AppConstants.txtFieldColor,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: _lists.searchList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchResults()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: TextWidget(
                              txt: _lists.searchList[index],
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              textColor: AppConstants.subTxtColor,
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
