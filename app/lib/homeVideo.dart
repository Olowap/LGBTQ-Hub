import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final ScrollController? scrollController;

  const VideoPlayerWidget({
    Key? key,
    required this.videoUrl,
    this.scrollController,
  }) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _showControls = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {
          _isPlaying = true;
        });
      });

    widget.scrollController?.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController?.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (widget.scrollController?.hasClients ?? false) {
      final isScrolling = widget.scrollController!.offset > 0;
      if (isScrolling && _controller.value.isPlaying) {
        _controller.pause();
        setState(() {
          _isPlaying = false;
        });
      }
    }
  }

  void _playPauseVideo() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
    setState(() {
      _isPlaying = _controller.value.isPlaying;
    });
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
    if (_showControls) {
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _showControls = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleControls,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: _controller.value.isInitialized
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
          if (_showControls)
            Positioned.fill(
              child: Center(
                child: IconButton(
                  onPressed: _playPauseVideo,
                  icon: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
