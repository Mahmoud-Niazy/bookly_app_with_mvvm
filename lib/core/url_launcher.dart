import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchLink({
   String? link,
  context,
}) async {
  if(link != null) {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {} else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Can\'t launch this url',
          ),
        ),
      );
    }
  }
}
