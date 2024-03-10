package com.example.anime_list

import com.example.anime_list.service.AnimeListService
import com.example.anime_list.service.ServiceInterface
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val retrofit = Retrofit.Builder()
            .baseUrl("https://api.jikan.moe/v4/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()

        val service: ServiceInterface = retrofit.create(ServiceInterface::class.java)

        Pigeon.FetchAnime.setup(flutterEngine.dartExecutor.binaryMessenger, AnimeListService(service))
    }
}
