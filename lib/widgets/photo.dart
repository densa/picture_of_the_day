import 'package:flutter/widgets.dart';

class PhotoContent extends StatelessWidget {
  const PhotoContent({
    super.key,
    required this.photoUrl,
    required this.title,
    this.onPhtoTap,
  });

  final String photoUrl;
  final String title;
  final VoidCallback? onPhtoTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double halfScreenHeight = MediaQuery.sizeOf(context).height / 2;
        double imageWidth = constraints.maxWidth;
        double imageHeight = halfScreenHeight;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onPhtoTap,
              child: SizedBox(
                width: imageWidth,
                height: imageHeight,
                child: Image.network(photoUrl),
              ),
            ),
            const SizedBox(height: 10),
            Text(title),
          ],
        );
      },
    );
  }
}
