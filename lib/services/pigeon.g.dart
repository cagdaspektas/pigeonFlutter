// Autogenerated from Pigeon (v2.0.4), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class AnimeListData {
  AnimeListData({
    this.malId,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
  });

  int? malId;
  String? url;
  Map<String?, Image?>? images;
  Trailer? trailer;
  bool? approved;
  List<Title?>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String?>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast? broadcast;
  List<Demographic?>? producers;
  List<Demographic?>? licensors;
  List<Demographic?>? studios;
  List<Demographic?>? genres;
  List<Demographic?>? explicitGenres;
  List<Demographic?>? themes;
  List<Demographic?>? demographics;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['malId'] = malId;
    pigeonMap['url'] = url;
    pigeonMap['images'] = images;
    pigeonMap['trailer'] = trailer == null ? null : trailer!.encode();
    pigeonMap['approved'] = approved;
    pigeonMap['titles'] = titles;
    pigeonMap['title'] = title;
    pigeonMap['titleEnglish'] = titleEnglish;
    pigeonMap['titleJapanese'] = titleJapanese;
    pigeonMap['titleSynonyms'] = titleSynonyms;
    pigeonMap['type'] = type;
    pigeonMap['source'] = source;
    pigeonMap['episodes'] = episodes;
    pigeonMap['status'] = status;
    pigeonMap['airing'] = airing;
    pigeonMap['aired'] = aired == null ? null : aired!.encode();
    pigeonMap['duration'] = duration;
    pigeonMap['rating'] = rating;
    pigeonMap['score'] = score;
    pigeonMap['scoredBy'] = scoredBy;
    pigeonMap['rank'] = rank;
    pigeonMap['popularity'] = popularity;
    pigeonMap['members'] = members;
    pigeonMap['favorites'] = favorites;
    pigeonMap['synopsis'] = synopsis;
    pigeonMap['background'] = background;
    pigeonMap['season'] = season;
    pigeonMap['year'] = year;
    pigeonMap['broadcast'] = broadcast == null ? null : broadcast!.encode();
    pigeonMap['producers'] = producers;
    pigeonMap['licensors'] = licensors;
    pigeonMap['studios'] = studios;
    pigeonMap['genres'] = genres;
    pigeonMap['explicitGenres'] = explicitGenres;
    pigeonMap['themes'] = themes;
    pigeonMap['demographics'] = demographics;
    return pigeonMap;
  }

  static AnimeListData decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return AnimeListData(
      malId: pigeonMap['malId'] as int?,
      url: pigeonMap['url'] as String?,
      images: (pigeonMap['images'] as Map<Object?, Object?>?)?.cast<String?, Image?>(),
      trailer: pigeonMap['trailer'] != null
          ? Trailer.decode(pigeonMap['trailer']!)
          : null,
      approved: pigeonMap['approved'] as bool?,
      titles: (pigeonMap['titles'] as List<Object?>?)?.cast<Title?>(),
      title: pigeonMap['title'] as String?,
      titleEnglish: pigeonMap['titleEnglish'] as String?,
      titleJapanese: pigeonMap['titleJapanese'] as String?,
      titleSynonyms: (pigeonMap['titleSynonyms'] as List<Object?>?)?.cast<String?>(),
      type: pigeonMap['type'] as String?,
      source: pigeonMap['source'] as String?,
      episodes: pigeonMap['episodes'] as int?,
      status: pigeonMap['status'] as String?,
      airing: pigeonMap['airing'] as bool?,
      aired: pigeonMap['aired'] != null
          ? Aired.decode(pigeonMap['aired']!)
          : null,
      duration: pigeonMap['duration'] as String?,
      rating: pigeonMap['rating'] as String?,
      score: pigeonMap['score'] as double?,
      scoredBy: pigeonMap['scoredBy'] as int?,
      rank: pigeonMap['rank'] as int?,
      popularity: pigeonMap['popularity'] as int?,
      members: pigeonMap['members'] as int?,
      favorites: pigeonMap['favorites'] as int?,
      synopsis: pigeonMap['synopsis'] as String?,
      background: pigeonMap['background'] as String?,
      season: pigeonMap['season'] as String?,
      year: pigeonMap['year'] as int?,
      broadcast: pigeonMap['broadcast'] != null
          ? Broadcast.decode(pigeonMap['broadcast']!)
          : null,
      producers: (pigeonMap['producers'] as List<Object?>?)?.cast<Demographic?>(),
      licensors: (pigeonMap['licensors'] as List<Object?>?)?.cast<Demographic?>(),
      studios: (pigeonMap['studios'] as List<Object?>?)?.cast<Demographic?>(),
      genres: (pigeonMap['genres'] as List<Object?>?)?.cast<Demographic?>(),
      explicitGenres: (pigeonMap['explicitGenres'] as List<Object?>?)?.cast<Demographic?>(),
      themes: (pigeonMap['themes'] as List<Object?>?)?.cast<Demographic?>(),
      demographics: (pigeonMap['demographics'] as List<Object?>?)?.cast<Demographic?>(),
    );
  }
}

class Aired {
  Aired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  String? from;
  String? to;
  Prop? prop;
  String? string;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['from'] = from;
    pigeonMap['to'] = to;
    pigeonMap['prop'] = prop == null ? null : prop!.encode();
    pigeonMap['string'] = string;
    return pigeonMap;
  }

  static Aired decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Aired(
      from: pigeonMap['from'] as String?,
      to: pigeonMap['to'] as String?,
      prop: pigeonMap['prop'] != null
          ? Prop.decode(pigeonMap['prop']!)
          : null,
      string: pigeonMap['string'] as String?,
    );
  }
}

class Prop {
  Prop({
    this.from,
    this.to,
  });

  From? from;
  To? to;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['from'] = from == null ? null : from!.encode();
    pigeonMap['to'] = to == null ? null : to!.encode();
    return pigeonMap;
  }

  static Prop decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Prop(
      from: pigeonMap['from'] != null
          ? From.decode(pigeonMap['from']!)
          : null,
      to: pigeonMap['to'] != null
          ? To.decode(pigeonMap['to']!)
          : null,
    );
  }
}

class From {
  From({
    this.day,
    this.month,
    this.year,
  });

  int? day;
  int? month;
  int? year;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['day'] = day;
    pigeonMap['month'] = month;
    pigeonMap['year'] = year;
    return pigeonMap;
  }

  static From decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return From(
      day: pigeonMap['day'] as int?,
      month: pigeonMap['month'] as int?,
      year: pigeonMap['year'] as int?,
    );
  }
}

class To {
  To({
    this.day,
    this.month,
    this.year,
  });

  int? day;
  int? month;
  int? year;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['day'] = day;
    pigeonMap['month'] = month;
    pigeonMap['year'] = year;
    return pigeonMap;
  }

  static To decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return To(
      day: pigeonMap['day'] as int?,
      month: pigeonMap['month'] as int?,
      year: pigeonMap['year'] as int?,
    );
  }
}

class Broadcast {
  Broadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  String? day;
  String? time;
  String? timezone;
  String? string;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['day'] = day;
    pigeonMap['time'] = time;
    pigeonMap['timezone'] = timezone;
    pigeonMap['string'] = string;
    return pigeonMap;
  }

  static Broadcast decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Broadcast(
      day: pigeonMap['day'] as String?,
      time: pigeonMap['time'] as String?,
      timezone: pigeonMap['timezone'] as String?,
      string: pigeonMap['string'] as String?,
    );
  }
}

class Demographic {
  Demographic({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  int? malId;
  String? type;
  String? name;
  String? url;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['malId'] = malId;
    pigeonMap['type'] = type;
    pigeonMap['name'] = name;
    pigeonMap['url'] = url;
    return pigeonMap;
  }

  static Demographic decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Demographic(
      malId: pigeonMap['malId'] as int?,
      type: pigeonMap['type'] as String?,
      name: pigeonMap['name'] as String?,
      url: pigeonMap['url'] as String?,
    );
  }
}

class Image {
  Image({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['imageUrl'] = imageUrl;
    pigeonMap['smallImageUrl'] = smallImageUrl;
    pigeonMap['largeImageUrl'] = largeImageUrl;
    return pigeonMap;
  }

  static Image decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Image(
      imageUrl: pigeonMap['imageUrl'] as String?,
      smallImageUrl: pigeonMap['smallImageUrl'] as String?,
      largeImageUrl: pigeonMap['largeImageUrl'] as String?,
    );
  }
}

class Title {
  Title({
    this.type,
    this.title,
  });

  String? type;
  String? title;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['type'] = type;
    pigeonMap['title'] = title;
    return pigeonMap;
  }

  static Title decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Title(
      type: pigeonMap['type'] as String?,
      title: pigeonMap['title'] as String?,
    );
  }
}

class Trailer {
  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  String? youtubeId;
  String? url;
  String? embedUrl;
  Images? images;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['youtubeId'] = youtubeId;
    pigeonMap['url'] = url;
    pigeonMap['embedUrl'] = embedUrl;
    pigeonMap['images'] = images == null ? null : images!.encode();
    return pigeonMap;
  }

  static Trailer decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Trailer(
      youtubeId: pigeonMap['youtubeId'] as String?,
      url: pigeonMap['url'] as String?,
      embedUrl: pigeonMap['embedUrl'] as String?,
      images: pigeonMap['images'] != null
          ? Images.decode(pigeonMap['images']!)
          : null,
    );
  }
}

class Images {
  Images({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['imageUrl'] = imageUrl;
    pigeonMap['smallImageUrl'] = smallImageUrl;
    pigeonMap['mediumImageUrl'] = mediumImageUrl;
    pigeonMap['largeImageUrl'] = largeImageUrl;
    pigeonMap['maximumImageUrl'] = maximumImageUrl;
    return pigeonMap;
  }

  static Images decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Images(
      imageUrl: pigeonMap['imageUrl'] as String?,
      smallImageUrl: pigeonMap['smallImageUrl'] as String?,
      mediumImageUrl: pigeonMap['mediumImageUrl'] as String?,
      largeImageUrl: pigeonMap['largeImageUrl'] as String?,
      maximumImageUrl: pigeonMap['maximumImageUrl'] as String?,
    );
  }
}

class _FetchAnimeCodec extends StandardMessageCodec {
  const _FetchAnimeCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Aired) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is AnimeListData) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is Broadcast) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
    if (value is Demographic) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else 
    if (value is From) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else 
    if (value is Image) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else 
    if (value is Images) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else 
    if (value is Prop) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else 
    if (value is Title) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else 
    if (value is To) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else 
    if (value is Trailer) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return Aired.decode(readValue(buffer)!);
      
      case 129:       
        return AnimeListData.decode(readValue(buffer)!);
      
      case 130:       
        return Broadcast.decode(readValue(buffer)!);
      
      case 131:       
        return Demographic.decode(readValue(buffer)!);
      
      case 132:       
        return From.decode(readValue(buffer)!);
      
      case 133:       
        return Image.decode(readValue(buffer)!);
      
      case 134:       
        return Images.decode(readValue(buffer)!);
      
      case 135:       
        return Prop.decode(readValue(buffer)!);
      
      case 136:       
        return Title.decode(readValue(buffer)!);
      
      case 137:       
        return To.decode(readValue(buffer)!);
      
      case 138:       
        return Trailer.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class FetchAnime {
  /// Constructor for [FetchAnime].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  FetchAnime({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _FetchAnimeCodec();

  Future<List<AnimeListData?>> fetchAnimeList() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FetchAnime.fetchAnimeList', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as List<Object?>?)!.cast<AnimeListData?>();
    }
  }
}
