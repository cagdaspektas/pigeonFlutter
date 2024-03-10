import 'package:flutter/material.dart';

import '../../services/pigeon.g.dart';

class AnimeListWidget extends StatelessWidget {
  final AnimeListData? animes;
  final VoidCallback? onTap;
  const AnimeListWidget({super.key, this.animes, this.onTap});

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(animes?.title ?? ''),
        subtitle: Text(
          animes?.source ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        // leading: article?.urlToImage != null ? Image.network(article!.urlToImage!) : null,
        onTap: onTap,
      );
}
