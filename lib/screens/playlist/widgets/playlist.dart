import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:podcast_player/models/episode.dart';
import 'package:podcast_player/scoped_models/scoped_playlist.dart';
import 'package:scoped_model/scoped_model.dart';
import 'episode_list.dart';
import 'player.dart';

class Playlist extends StatelessWidget {
  final playlistManager;

  Playlist(this.playlistManager);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playlist"),
      ),
      body: ScopedModel<ScopedPlaylist>(
        model: playlistManager,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EpisodeList(_handleEpisodeListViewItemTap),
            Player(),
          ],
        ),
      ),
    );
  }

  _handleEpisodeListViewItemTap(Episode e) {
    playlistManager.setSelectedEpisode(e);
  }
}
