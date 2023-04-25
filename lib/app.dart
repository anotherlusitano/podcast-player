import 'package:flutter/material.dart';
import 'package:podcast_player/models/episode.dart';
import 'package:podcast_player/models/podcast.dart';
import 'package:podcast_player/scoped_models/scoped_playlist.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final playlistManager = ScopedPlaylist();

    final podcasts = Podcast.fetchAll();
    for (Podcast p in podcasts) {
      for (Episode e in p.episodes) {
        playlistManager.addEpisode(e);
      }
    }

    return MaterialApp(
      home: Playlist(),
    );
  }
}
