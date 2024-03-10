
flutter pub run pigeon \
  --input lib/screens/anime/model/anime_model.dart \
  --dart_out lib/services/pigeon.g.dart \
  --java_out ././android/app/src/main/kotlin/com/example/anime_list/pigeon/Pigeon.java \
  --java_package "com.example.anime_list"