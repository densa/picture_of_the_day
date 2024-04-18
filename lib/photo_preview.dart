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
      backgroundColor: Colors.black,
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            child: Image.network(photoUrl),
          );
        }),
      ),
    );
  }
}

class PhotoPreviewParams {
  const PhotoPreviewParams({required this.photoUrl, required this.title});

  final String photoUrl;
  final String title;

  Map<String, dynamic> toJson() => {
        'photoUrl': photoUrl,
        'title': title,
      };
}
