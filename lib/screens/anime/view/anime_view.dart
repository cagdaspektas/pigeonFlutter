import 'package:anime_list/product/widgets/anime_list_widget.dart';
import 'package:anime_list/screens/anime/viewModel/bloc/anime_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/dependency_injection.dart';
import '../../../services/pigeon.g.dart';

class AnimeView extends StatelessWidget {
  AnimeView({Key? key}) : super(key: key);
  final _bloc = di<AnimeBloc>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Anime App'),
        ),
        body: _body(context),
      );

  Widget _body(BuildContext context) => BlocBuilder<AnimeBloc, AnimeState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state is ErrorAnimalState) {
            return _errorNewsState(state.error);
          } else if (state is AnimeInitial) {
            _bloc.add(GetAnimeDatas());
            return _loadingNewsState();
          } else if (state is NoAnimalState) {
            return _noNewsState();
          } else if (state is AnimeDatasState) {
            return _articles(state.animes);
          }

          return Container();
        },
      );

  Widget _articles(List<AnimeListData?>? animes) => ListView.builder(
        itemCount: animes?.length,
        itemBuilder: (context, index) => AnimeListWidget(
          animes: animes?[index],
          onTap: () {},
        ),
      );

  Widget _errorNewsState(String error) => Center(
        child: Text(error),
      );

  Widget _noNewsState() => const Center(
        child: Text('No news available'),
      );

  Widget _loadingNewsState() => const Center(
        child: CircularProgressIndicator(),
      );
}
