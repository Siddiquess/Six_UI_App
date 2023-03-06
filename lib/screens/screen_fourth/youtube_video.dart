// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';


// class YoutubeVideo extends StatefulWidget {
//   const YoutubeVideo({super.key});

//   @override
//   State<YoutubeVideo> createState() => _YoutubeVideoState();
// }

// class _YoutubeVideoState extends State<YoutubeVideo> {
//   final videoURL = 'https://www.youtube.com/watch?v=LlSbATXhYzc';

//   late YoutubePlayerController _controller;

//   @override
//   void initState() {
//     final videoID = YoutubePlayer.convertUrlToId(videoURL);
//     _controller = YoutubePlayerController(
//         initialVideoId: videoID!,
//         flags: const YoutubePlayerFlags(
//           autoPlay: false,
//           controlsVisibleAtStart: true,
//           isLive: false,
//         ));

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: const Padding(
//         padding: EdgeInsets.only(bottom: 15),
//         child: Text(
//           'What is Dukaan Premium?',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       subtitle: Column(
//         children: [
//           YoutubePlayer(
//             controller: _controller,
//             showVideoProgressIndicator: true,
//             onReady: () => debugPrint('ready'),
//             bottomActions: [
//               CurrentPosition(),
//               ProgressBar(
//                 isExpanded: true,
//               ),
//               const PlaybackSpeedButton()
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
