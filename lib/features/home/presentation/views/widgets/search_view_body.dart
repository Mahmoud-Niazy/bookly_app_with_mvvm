import 'package:bookly_app_with_mvvm/core/navigation.dart';
import 'package:bookly_app_with_mvvm/core/widgets/custom_error.dart';
import 'package:bookly_app_with_mvvm/core/widgets/form_field.dart';
import 'package:bookly_app_with_mvvm/core/widgets/icon_button.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/search_cubit/search_states.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/search_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'newest_book_item.dart';

class SearchViewBody extends StatelessWidget {
  final searchController = TextEditingController();

  SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (contextOfBloc) => SearchCubit(),
      child: BlocBuilder<SearchCubit, SearchStates>(builder: (context, state) {
        return CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
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
                      onChanged: (String search) {
                        SearchCubit.get(context)
                            .fetchSearchedBooks(search: search);
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    state is SearchSuccessfullyState
                        ? ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 15.h,
                              );
                            },
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                NewestBookItem(book: state.books![index]),
                            itemCount: state.books!.length,
                          )
                        : state is SearchErrorState
                            ? CustomError(errorMessage: 'Not found')
                            : Container(),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
