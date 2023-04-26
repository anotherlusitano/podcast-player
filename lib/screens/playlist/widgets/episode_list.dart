import 'package:flutter/material.dart';
import 'package:podcast_player/models/episode.dart';
import 'package:podcast_player/scoped_models/scoped_playlist.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../playlist/widgets/episode_list.dart';

typedef EpisodeListTapCallback = void Function(Episode e);

class EpisodeList extends StatelessWidget {
  final EpisodeListTapCallback onItemTap;

  EpisodeList(this.onItemTap);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedPlaylist>(
      builder: (context, child, model) => Expanded(
        child: ListView(
          children:
              scopedModel.episodes.map((e) => _playListViewItem(e)).toList(),
        ),
      ),
    );
  }
}

Widget _playListViewItem(Episode e) {
  return GestureDetector(
    onTap: () => onItemTap(e),
    child: _playListViewItemSubTitle(e),
  )
}

Widget _playListViewItemSubTitle(Episode e) {
  final subTitle = 
  (e.isPlaying ? ' [PLAYING] ' : '') + '${e.podcast.name}: "${e.title}"';

  return Container(
    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 25.0, 25.0),
    child: Text(subTitle, style: TextStyle(fontSize: 18.0))
  );
}