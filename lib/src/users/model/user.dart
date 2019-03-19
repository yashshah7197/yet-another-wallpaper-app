import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  String get id;

  String get username;

  @BuiltValueField(wireName: 'profile_image')
  UserProfileImage get profileImage;

  String get name;

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

  @BuiltValueField(wireName: 'total_photos')
  int get photoCount;

  @BuiltValueField(wireName: 'total_collections')
  int get collectionCount;

  @BuiltValueField(wireName: 'total_likes')
  int get likeCount;

  @nullable
  @BuiltValueField(wireName: 'downloads')
  int get downloadCount;

  @nullable
  BuiltList<Photo> get photos;

  @nullable
  UserTags get tags;

  UserLinks get links;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;
}

abstract class UserProfileImage
    implements Built<UserProfileImage, UserProfileImageBuilder> {
  String get small;

  String get medium;

  String get large;

  UserProfileImage._();

  factory UserProfileImage([updates(UserProfileImageBuilder b)]) =
      _$UserProfileImage;
}

abstract class UserLinks implements Built<UserLinks, UserLinksBuilder> {
  String get self;

  String get html;

  String get photos;

  String get likes;

  String get portfolio;

  String get following;

  String get followers;

  UserLinks._();

  factory UserLinks([updates(UserLinksBuilder b)]) = _$UserLinks;
}

abstract class UserTags implements Built<UserTags, UserTagsBuilder> {
  BuiltList<UserTag> get custom;

  BuiltList<UserTag> get aggregated;

  UserTags._();

  factory UserTags([updates(UserTagsBuilder b)]) = _$UserTags;
}

abstract class UserTag implements Built<UserTag, UserTagBuilder> {
  String get title;

  UserTag._();

  factory UserTag([updates(UserTagBuilder b)]) = _$UserTag;
}
