import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookItemImage extends StatelessWidget {
   final String? image;

  const BookItemImage({
    super.key,
     this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            imageUrl: image ?? '',
            fit: BoxFit.fill,
            errorWidget: (context,url,error){
              return const Icon(
                Icons.error_outline,
              );
            },
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     image: DecorationImage(
          //       fit: BoxFit.fill,
          //       image: NetworkImage(image?? ""),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
