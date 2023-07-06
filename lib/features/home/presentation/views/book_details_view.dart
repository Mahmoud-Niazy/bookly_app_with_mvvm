import 'package:bookly_app_with_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget{
   const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var recievedData = ModalRoute.of(context)!.settings.arguments as Map ;
    BookItemModel book = recievedData['book'] ;
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(book: book) ,
      ),
    );
  }
}