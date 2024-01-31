import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VedioPlayer extends StatefulWidget {
  final vedioId;
  const VedioPlayer({Key? key, this.vedioId}) : super(key: key);

  @override
  State<VedioPlayer> createState() => _VedioPlayerState();
}

class _VedioPlayerState extends State<VedioPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // final vedioID =
    //     "https://www.youtube.com/watch?v=oV7jjQCxFU8";
    final vedioID =
        YoutubePlayer.convertUrlToId(widget.vedioId.toString())!;
    _controller = YoutubePlayerController(
        initialVideoId: vedioID!,
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: false,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            aspectRatio: 16 / 9,
            onReady: () {
              _controller.addListener(() {});
            },
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Colors.purple,
                ),
              ),
              const PlaybackSpeedButton(),
              // FullScreenButton(),
            ],
          ),
          builder: (context, player) {
            return Column(
              children: [
                // const SizedBox(
                //   height: 10,
                // ),
                player,
                // const SizedBox(
                //   height: 120,
                // )
              ],
            );
          },
        ),
      ),
    );
  }
}
