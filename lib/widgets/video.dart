import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoContent extends StatefulWidget {
  const VideoContent({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<VideoContent> createState() => _VideoContentState();
}

class _VideoContentState extends State<VideoContent> {
  final _controller = YoutubePlayerController(
    params: YoutubePlayerParams(
      mute: false,
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  @override
  void initState() {
    super.initState();
    _controller.loadVideoByUrl(mediaContentUrl: widget.videoUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: YoutubePlayer(
          controller: _controller,
        ),
      ),
    );
  }
}
