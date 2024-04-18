import 'package:flutter/material.dart';

class PhotoPreview extends StatelessWidget {
  const PhotoPreview({
    super.key,
    required this.photoUrl,
  });

  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(photoUrl),
    );
  }
}

class PhotoPreviewParams {
  const PhotoPreviewParams({required this.photoUrl, required this.title});

  final String photoUrl;
  final String title;
}
