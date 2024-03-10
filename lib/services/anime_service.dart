import 'package:anime_list/services/pigeon.g.dart';

class AnimeRepository {
  final FetchAnime animeListService;

  AnimeRepository({required this.animeListService});

  Future<List<AnimeListData?>?> get animes => animeListService.fetchAnimeList();
}
