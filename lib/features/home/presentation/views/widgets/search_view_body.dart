import 'package:bookly_app_with_mvvm/core/navigation.dart';
import 'package:bookly_app_with_mvvm/core/widgets/form_field.dart';
import 'package:bookly_app_with_mvvm/core/widgets/icon_button.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/search_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  final searchController = TextEditingController();

  SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomIconButton(
                onPressed: () {
                  navigatePop(context: context);
                },
                icon: Icons.arrow_back,
                size: 22,
              ),
              const SearchText(),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            controller: searchController,
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
