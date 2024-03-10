package com.example.anime_list.service

import com.example.anime_list.Pigeon
import com.example.anime_list.model.AnimeResponse
import retrofit2.Call
import retrofit2.http.GET

interface ServiceInterface {
    @GET("/v4/top/anime")
    fun fetchAnimeData(): Call<AnimeResponse>?


}