import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhotoPreview extends StatelessWidget {
  const PhotoPreview({
    super.key,
    required this.photoUrl,
    required this.title,
  });

  final String photoUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  height: constraints.maxHeight,
                  child: Image.network(
                    photoUrl,
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: GestureDetector(
              onTap: () => context.pop(),
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
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
