import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/users/model/user.dart';

part 'serializers.g.dart';

@SerializersFor(const [Collection, Photo, User])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(Iso8601DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

T deserialize<T>(dynamic json) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), json);

BuiltList<T> deserializeListOf<T>(List<dynamic> jsonList) =>
    BuiltList.from(jsonList
        .map((jsonItem) => deserialize<T>(jsonItem))
        .toList(growable: false));
