part of 'anime_bloc.dart';

abstract class AnimeState extends Equatable {
  const AnimeState();

  @override
  List<Object> get props => [];
}

class AnimeInitial extends AnimeState {
  @override
  List<Object> get props => [];
}

class AnimeDatasState extends AnimeState {
  final List<AnimeListData?> animes;

  const AnimeDatasState(this.animes);

  @override
  List<Object> get props => [animes];
}

class NoAnimalState extends AnimeState {
  @override
  List<Object> get props => [];
}

class ErrorAnimalState extends AnimeState {
  final String error;

  const ErrorAnimalState(this.error);

  @override
  List<Object> get props => [error];
}
