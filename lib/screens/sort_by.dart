import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';

class SortBy extends StatelessWidget {
  final _lists = AllLists();

  SortBy({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: AppConstants.subTxtColor,
                      size: 18,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    TextWidget(
                      txt: "Short By",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Divider(
                thickness: 1,
                height: 0,
                color: AppConstants.txtFieldColor,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                child: TextWidget(
                  txt: "Best Match",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  textColor: AppConstants.primaryColor,
                ),
              ),
              ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _lists.sortByList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: AppConstants.txtFieldColor.withOpacity(0.5),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 19),
                        child: Row(
                          children: [
                            TextWidget(
                              txt: _lists.sortByList[index],
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              textColor: AppConstants.titleTextColor,
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
