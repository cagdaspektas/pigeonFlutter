import 'package:anime_list/screens/anime/viewModel/bloc/anime_bloc.dart';
import 'package:get_it/get_it.dart';

import '../services/anime_service.dart';
import '../services/pigeon.g.dart';

final di = GetIt.instance;

Future<void> setupDi() async {
  //services
  di.registerLazySingleton(() => AnimeRepository(animeListService: FetchAnime()));

//blocs
  di.registerLazySingleton(() => AnimeBloc(animeService: AnimeRepository(animeListService: FetchAnime())));
}
