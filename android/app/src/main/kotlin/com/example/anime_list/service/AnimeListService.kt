package com.example.anime_list.service

import com.example.anime_list.Pigeon
import com.example.anime_list.model.AnimeResponse
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class AnimeListService(val serviceInterface: ServiceInterface):
    Pigeon.FetchAnime{
    override fun fetchAnimeList(result: Pigeon.Result<List<Pigeon.AnimeListData>>?) {
        serviceInterface.fetchAnimeData()?.enqueue(object : Callback<AnimeResponse?> {
            override fun onResponse(
                call: Call<AnimeResponse?>,
                response: Response<AnimeResponse?>
            ) {
                result?.success(if (response.body() != null) response.body()!!.getAnimes() else null)
            }

            override fun onFailure(call: Call<AnimeResponse?>, t: Throwable) {
                result?.error(t)
            }
        })
    }
}
