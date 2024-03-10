package com.example.anime_list.model

import com.example.anime_list.Pigeon
import com.google.gson.annotations.SerializedName


class AnimeResponse {

    @SerializedName("data")
    private var animeListData: List<Pigeon.AnimeListData>? = null






   public fun getAnimes(): List<Pigeon.AnimeListData> {
        return animeListData!!
    }







}