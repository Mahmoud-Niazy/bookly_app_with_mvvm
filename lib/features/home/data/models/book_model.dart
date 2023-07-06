// class BooksModel {
//   late List<BookItemModel> books ;
//
//   BooksModel.fromJson(Map<String,dynamic>json){
//     json['items'].forEach((element){
//       books.add(BookItemModel.fromJson(element));
//     });
//   }
// }

class BookItemModel {
  late String id ;
  late String bookName ;
  late String author ;
  late String image ;
  late String previewUrl ;
  late String category ;
  BookItemModel.fromJson(Map<String,dynamic>json){
    id = json['id'];
    bookName = json['volumeInfo']['title'];
    author = json['volumeInfo']['authors'][0];
    image = json['volumeInfo']['imageLinks']['thumbnail'];
    previewUrl = json['volumeInfo']['previewLink'];
    category = json['volumeInfo']['categories'][0];
  }
}