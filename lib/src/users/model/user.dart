import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  static Serializer<User> get serializer => _$userSerializer;

  @nullable
  String get id;

  @nullable
  String get username;

  @nullable
  @BuiltValueField(wireName: 'profile_image')
  UserProfileImage get profileImage;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @nullable
  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @nullable
  String get bio;

  @nullable
  String get location;

  @nullable
  @BuiltValueField(wireName: 'portfolio_url')
  String get portfolioUrl;

  @nullable
  @BuiltValueField(wireName: 'twitter_username')
  String get twitterUsername;

  @nullable
  @BuiltValueField(wireName: 'instagram_username')
  String get instagramUsername;

  @nullable
  @BuiltValueField(wireName: 'followers_count')
  int get followerCount;

  @nullable
  @BuiltValueField(wireName: 'following_count')
  int get followingCount;

  @nullable
  @BuiltValueField(wireName: 'total_photos')
  int get photoCount;

  @nullable
  @BuiltValueField(wireName: 'total_collections')
  int get collectionCount;

  @nullable
  @BuiltValueField(wireName: 'total_likes')
  int get likeCount;

  @nullable
  @BuiltValueField(wireName: 'downloads')
  int get downloadCount;

  @nullable
  BuiltList<Photo> get photos;

  @nullable
  UserTags get tags;

  @nullable
  UserLinks get links;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;
}

abstract class UserProfileImage
    implements Built<UserProfileImage, UserProfileImageBuilder> {
  static Serializer<UserProfileImage> get serializer =>
      _$userProfileImageSerializer;

  @nullable
  String get small;

  @nullable
  String get medium;

  @nullable
  String get large;

  UserProfileImage._();

  factory UserProfileImage([updates(UserProfileImageBuilder b)]) =
      _$UserProfileImage;
}

abstract class UserLinks implements Built<UserLinks, UserLinksBuilder> {
  static Serializer<UserLinks> get serializer => _$userLinksSerializer;

  @nullable
  String get self;

  @nullable
  String get html;

  @nullable
  String get photos;

  @nullable
  String get likes;

  @nullable
  String get portfolio;

  @nullable
  String get following;

  @nullable
  String get followers;

  UserLinks._();

  factory UserLinks([updates(UserLinksBuilder b)]) = _$UserLinks;
}

abstract class UserTags implements Built<UserTags, UserTagsBuilder> {
  static Serializer<UserTags> get serializer => _$userTagsSerializer;

  @nullable
  BuiltList<UserTag> get custom;

  @nullable
  BuiltList<UserTag> get aggregated;

  UserTags._();

  factory UserTags([updates(UserTagsBuilder b)]) = _$UserTags;
}

abstract class UserTag implements Built<UserTag, UserTagBuilder> {
  static Serializer<UserTag> get serializer => _$userTagSerializer;

  @nullable
  String get title;

  UserTag._();

  factory UserTag([updates(UserTagBuilder b)]) = _$UserTag;
}
