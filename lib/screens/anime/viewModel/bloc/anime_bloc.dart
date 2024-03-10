import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../services/anime_service.dart';
import '../../../../services/pigeon.g.dart';

part 'anime_event.dart';
part 'anime_state.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  final AnimeRepository animeService;

  AnimeBloc({required this.animeService}) : super(AnimeInitial()) {
    on<GetAnimeDatas>((event, emit) async {
      await _getAllAnimes(event, emit);
    });
  }

  Future<void> _getAllAnimes(_, Emitter<AnimeState> emit) async {
    List<AnimeListData?>? animes;

    try {
      animes = await animeService.animes;

      if (animes != null) {
        if (animes.isNotEmpty) {
          emit(AnimeDatasState(animes));
        } else {
          emit(NoAnimalState());
        }
      } else {
        emit(const ErrorAnimalState("There is an error about animes wait for a moment and try again later"));
      }
    } catch (error) {
      emit(ErrorAnimalState(error.toString()));
    }
  }
}
