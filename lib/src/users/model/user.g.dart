// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();
Serializer<UserProfileImage> _$userProfileImageSerializer =
    new _$UserProfileImageSerializer();
Serializer<UserLinks> _$userLinksSerializer = new _$UserLinksSerializer();
Serializer<UserTags> _$userTagsSerializer = new _$UserTagsSerializer();
Serializer<UserTag> _$userTagSerializer = new _$UserTagSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'profile_image',
      serializers.serialize(object.profileImage,
          specifiedType: const FullType(UserProfileImage)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'total_photos',
      serializers.serialize(object.photoCount,
          specifiedType: const FullType(int)),
      'total_collections',
      serializers.serialize(object.collectionCount,
          specifiedType: const FullType(int)),
      'total_likes',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(UserLinks)),
    ];
    if (object.lastName != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.portfolioUrl != null) {
      result
        ..add('portfolio_url')
        ..add(serializers.serialize(object.portfolioUrl,
            specifiedType: const FullType(String)));
    }
    if (object.twitterUsername != null) {
      result
        ..add('twitter_username')
        ..add(serializers.serialize(object.twitterUsername,
            specifiedType: const FullType(String)));
    }
    if (object.instagramUsername != null) {
      result
        ..add('instagram_username')
        ..add(serializers.serialize(object.instagramUsername,
            specifiedType: const FullType(String)));
    }
    if (object.followerCount != null) {
      result
        ..add('followers_count')
        ..add(serializers.serialize(object.followerCount,
            specifiedType: const FullType(int)));
    }
    if (object.followingCount != null) {
      result
        ..add('following_count')
        ..add(serializers.serialize(object.followingCount,
            specifiedType: const FullType(int)));
    }
    if (object.downloadCount != null) {
      result
        ..add('downloads')
        ..add(serializers.serialize(object.downloadCount,
            specifiedType: const FullType(int)));
    }
    if (object.photos != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(object.photos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Photo)])));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType: const FullType(UserTags)));
    }

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_image':
          result.profileImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UserProfileImage))
              as UserProfileImage);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'portfolio_url':
          result.portfolioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_username':
          result.twitterUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instagram_username':
          result.instagramUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'followers_count':
          result.followerCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'following_count':
          result.followingCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_photos':
          result.photoCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_collections':
          result.collectionCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_likes':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'downloads':
          result.downloadCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Photo)]))
              as BuiltList);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserTags)) as UserTags);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserLinks)) as UserLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$UserProfileImageSerializer
    implements StructuredSerializer<UserProfileImage> {
  @override
  final Iterable<Type> types = const [UserProfileImage, _$UserProfileImage];
  @override
  final String wireName = 'UserProfileImage';

  @override
  Iterable serialize(Serializers serializers, UserProfileImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(String)),
      'medium',
      serializers.serialize(object.medium,
          specifiedType: const FullType(String)),
      'large',
      serializers.serialize(object.large,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserProfileImage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserProfileImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserLinksSerializer implements StructuredSerializer<UserLinks> {
  @override
  final Iterable<Type> types = const [UserLinks, _$UserLinks];
  @override
  final String wireName = 'UserLinks';

  @override
  Iterable serialize(Serializers serializers, UserLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'self',
      serializers.serialize(object.self, specifiedType: const FullType(String)),
      'html',
      serializers.serialize(object.html, specifiedType: const FullType(String)),
      'photos',
      serializers.serialize(object.photos,
          specifiedType: const FullType(String)),
      'likes',
      serializers.serialize(object.likes,
          specifiedType: const FullType(String)),
      'portfolio',
      serializers.serialize(object.portfolio,
          specifiedType: const FullType(String)),
      'following',
      serializers.serialize(object.following,
          specifiedType: const FullType(String)),
      'followers',
      serializers.serialize(object.followers,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserLinks deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photos':
          result.photos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'portfolio':
          result.portfolio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'following':
          result.following = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'followers':
          result.followers = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserTagsSerializer implements StructuredSerializer<UserTags> {
  @override
  final Iterable<Type> types = const [UserTags, _$UserTags];
  @override
  final String wireName = 'UserTags';

  @override
  Iterable serialize(Serializers serializers, UserTags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'custom',
      serializers.serialize(object.custom,
          specifiedType:
              const FullType(BuiltList, const [const FullType(UserTag)])),
      'aggregated',
      serializers.serialize(object.aggregated,
          specifiedType:
              const FullType(BuiltList, const [const FullType(UserTag)])),
    ];

    return result;
  }

  @override
  UserTags deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserTagsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'custom':
          result.custom.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(UserTag)])) as BuiltList);
          break;
        case 'aggregated':
          result.aggregated.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(UserTag)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$UserTagSerializer implements StructuredSerializer<UserTag> {
  @override
  final Iterable<Type> types = const [UserTag, _$UserTag];
  @override
  final String wireName = 'UserTag';

  @override
  Iterable serialize(Serializers serializers, UserTag object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserTag deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserTagBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String id;
  @override
  final String username;
  @override
  final UserProfileImage profileImage;
  @override
  final String name;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String bio;
  @override
  final String location;
  @override
  final String portfolioUrl;
  @override
  final String twitterUsername;
  @override
  final String instagramUsername;
  @override
  final int followerCount;
  @override
  final int followingCount;
  @override
  final int photoCount;
  @override
  final int collectionCount;
  @override
  final int likeCount;
  @override
  final int downloadCount;
  @override
  final BuiltList<Photo> photos;
  @override
  final UserTags tags;
  @override
  final UserLinks links;

  factory _$User([void updates(UserBuilder b)]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.username,
      this.profileImage,
      this.name,
      this.firstName,
      this.lastName,
      this.bio,
      this.location,
      this.portfolioUrl,
      this.twitterUsername,
      this.instagramUsername,
      this.followerCount,
      this.followingCount,
      this.photoCount,
      this.collectionCount,
      this.likeCount,
      this.downloadCount,
      this.photos,
      this.tags,
      this.links})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('User', 'username');
    }
    if (profileImage == null) {
      throw new BuiltValueNullFieldError('User', 'profileImage');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('User', 'name');
    }
    if (firstName == null) {
      throw new BuiltValueNullFieldError('User', 'firstName');
    }
    if (photoCount == null) {
      throw new BuiltValueNullFieldError('User', 'photoCount');
    }
    if (collectionCount == null) {
      throw new BuiltValueNullFieldError('User', 'collectionCount');
    }
    if (likeCount == null) {
      throw new BuiltValueNullFieldError('User', 'likeCount');
    }
    if (links == null) {
      throw new BuiltValueNullFieldError('User', 'links');
    }
  }

  @override
  User rebuild(void updates(UserBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        username == other.username &&
        profileImage == other.profileImage &&
        name == other.name &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        bio == other.bio &&
        location == other.location &&
        portfolioUrl == other.portfolioUrl &&
        twitterUsername == other.twitterUsername &&
        instagramUsername == other.instagramUsername &&
        followerCount == other.followerCount &&
        followingCount == other.followingCount &&
        photoCount == other.photoCount &&
        collectionCount == other.collectionCount &&
        likeCount == other.likeCount &&
        downloadCount == other.downloadCount &&
        photos == other.photos &&
        tags == other.tags &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, id.hashCode),
                                                                                username.hashCode),
                                                                            profileImage.hashCode),
                                                                        name.hashCode),
                                                                    firstName.hashCode),
                                                                lastName.hashCode),
                                                            bio.hashCode),
                                                        location.hashCode),
                                                    portfolioUrl.hashCode),
                                                twitterUsername.hashCode),
                                            instagramUsername.hashCode),
                                        followerCount.hashCode),
                                    followingCount.hashCode),
                                photoCount.hashCode),
                            collectionCount.hashCode),
                        likeCount.hashCode),
                    downloadCount.hashCode),
                photos.hashCode),
            tags.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('username', username)
          ..add('profileImage', profileImage)
          ..add('name', name)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('bio', bio)
          ..add('location', location)
          ..add('portfolioUrl', portfolioUrl)
          ..add('twitterUsername', twitterUsername)
          ..add('instagramUsername', instagramUsername)
          ..add('followerCount', followerCount)
          ..add('followingCount', followingCount)
          ..add('photoCount', photoCount)
          ..add('collectionCount', collectionCount)
          ..add('likeCount', likeCount)
          ..add('downloadCount', downloadCount)
          ..add('photos', photos)
          ..add('tags', tags)
          ..add('links', links))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  UserProfileImageBuilder _profileImage;
  UserProfileImageBuilder get profileImage =>
      _$this._profileImage ??= new UserProfileImageBuilder();
  set profileImage(UserProfileImageBuilder profileImage) =>
      _$this._profileImage = profileImage;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _portfolioUrl;
  String get portfolioUrl => _$this._portfolioUrl;
  set portfolioUrl(String portfolioUrl) => _$this._portfolioUrl = portfolioUrl;

  String _twitterUsername;
  String get twitterUsername => _$this._twitterUsername;
  set twitterUsername(String twitterUsername) =>
      _$this._twitterUsername = twitterUsername;

  String _instagramUsername;
  String get instagramUsername => _$this._instagramUsername;
  set instagramUsername(String instagramUsername) =>
      _$this._instagramUsername = instagramUsername;

  int _followerCount;
  int get followerCount => _$this._followerCount;
  set followerCount(int followerCount) => _$this._followerCount = followerCount;

  int _followingCount;
  int get followingCount => _$this._followingCount;
  set followingCount(int followingCount) =>
      _$this._followingCount = followingCount;

  int _photoCount;
  int get photoCount => _$this._photoCount;
  set photoCount(int photoCount) => _$this._photoCount = photoCount;

  int _collectionCount;
  int get collectionCount => _$this._collectionCount;
  set collectionCount(int collectionCount) =>
      _$this._collectionCount = collectionCount;

  int _likeCount;
  int get likeCount => _$this._likeCount;
  set likeCount(int likeCount) => _$this._likeCount = likeCount;

  int _downloadCount;
  int get downloadCount => _$this._downloadCount;
  set downloadCount(int downloadCount) => _$this._downloadCount = downloadCount;

  ListBuilder<Photo> _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  UserTagsBuilder _tags;
  UserTagsBuilder get tags => _$this._tags ??= new UserTagsBuilder();
  set tags(UserTagsBuilder tags) => _$this._tags = tags;

  UserLinksBuilder _links;
  UserLinksBuilder get links => _$this._links ??= new UserLinksBuilder();
  set links(UserLinksBuilder links) => _$this._links = links;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
      _profileImage = _$v.profileImage?.toBuilder();
      _name = _$v.name;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _bio = _$v.bio;
      _location = _$v.location;
      _portfolioUrl = _$v.portfolioUrl;
      _twitterUsername = _$v.twitterUsername;
      _instagramUsername = _$v.instagramUsername;
      _followerCount = _$v.followerCount;
      _followingCount = _$v.followingCount;
      _photoCount = _$v.photoCount;
      _collectionCount = _$v.collectionCount;
      _likeCount = _$v.likeCount;
      _downloadCount = _$v.downloadCount;
      _photos = _$v.photos?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void updates(UserBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              username: username,
              profileImage: profileImage.build(),
              name: name,
              firstName: firstName,
              lastName: lastName,
              bio: bio,
              location: location,
              portfolioUrl: portfolioUrl,
              twitterUsername: twitterUsername,
              instagramUsername: instagramUsername,
              followerCount: followerCount,
              followingCount: followingCount,
              photoCount: photoCount,
              collectionCount: collectionCount,
              likeCount: likeCount,
              downloadCount: downloadCount,
              photos: _photos?.build(),
              tags: _tags?.build(),
              links: links.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'profileImage';
        profileImage.build();

        _$failedField = 'photos';
        _photos?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserProfileImage extends UserProfileImage {
  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  factory _$UserProfileImage([void updates(UserProfileImageBuilder b)]) =>
      (new UserProfileImageBuilder()..update(updates)).build();

  _$UserProfileImage._({this.small, this.medium, this.large}) : super._() {
    if (small == null) {
      throw new BuiltValueNullFieldError('UserProfileImage', 'small');
    }
    if (medium == null) {
      throw new BuiltValueNullFieldError('UserProfileImage', 'medium');
    }
    if (large == null) {
      throw new BuiltValueNullFieldError('UserProfileImage', 'large');
    }
  }

  @override
  UserProfileImage rebuild(void updates(UserProfileImageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileImageBuilder toBuilder() =>
      new UserProfileImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileImage &&
        small == other.small &&
        medium == other.medium &&
        large == other.large;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, small.hashCode), medium.hashCode), large.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserProfileImage')
          ..add('small', small)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class UserProfileImageBuilder
    implements Builder<UserProfileImage, UserProfileImageBuilder> {
  _$UserProfileImage _$v;

  String _small;
  String get small => _$this._small;
  set small(String small) => _$this._small = small;

  String _medium;
  String get medium => _$this._medium;
  set medium(String medium) => _$this._medium = medium;

  String _large;
  String get large => _$this._large;
  set large(String large) => _$this._large = large;

  UserProfileImageBuilder();

  UserProfileImageBuilder get _$this {
    if (_$v != null) {
      _small = _$v.small;
      _medium = _$v.medium;
      _large = _$v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileImage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserProfileImage;
  }

  @override
  void update(void updates(UserProfileImageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserProfileImage build() {
    final _$result = _$v ??
        new _$UserProfileImage._(small: small, medium: medium, large: large);
    replace(_$result);
    return _$result;
  }
}

class _$UserLinks extends UserLinks {
  @override
  final String self;
  @override
  final String html;
  @override
  final String photos;
  @override
  final String likes;
  @override
  final String portfolio;
  @override
  final String following;
  @override
  final String followers;

  factory _$UserLinks([void updates(UserLinksBuilder b)]) =>
      (new UserLinksBuilder()..update(updates)).build();

  _$UserLinks._(
      {this.self,
      this.html,
      this.photos,
      this.likes,
      this.portfolio,
      this.following,
      this.followers})
      : super._() {
    if (self == null) {
      throw new BuiltValueNullFieldError('UserLinks', 'self');
    }
    if (html == null) {
      throw new BuiltValueNullFieldError('UserLinks', 'html');
    }
    if (photos == null) {
      throw new BuiltValueNullFieldError('UserLinks', 'photos');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('UserLinks', 'likes');
    }
    if (portfolio == null) {
      throw new BuiltValueNullFieldError('UserLinks', 'portfolio');
    }
    if (following == null) {
      throw new BuiltValueNullFieldError('UserLinks', 'following');
    }
    if (followers == null) {
      throw new BuiltValueNullFieldError('UserLinks', 'followers');
    }
  }

  @override
  UserLinks rebuild(void updates(UserLinksBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLinksBuilder toBuilder() => new UserLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLinks &&
        self == other.self &&
        html == other.html &&
        photos == other.photos &&
        likes == other.likes &&
        portfolio == other.portfolio &&
        following == other.following &&
        followers == other.followers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, self.hashCode), html.hashCode),
                        photos.hashCode),
                    likes.hashCode),
                portfolio.hashCode),
            following.hashCode),
        followers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserLinks')
          ..add('self', self)
          ..add('html', html)
          ..add('photos', photos)
          ..add('likes', likes)
          ..add('portfolio', portfolio)
          ..add('following', following)
          ..add('followers', followers))
        .toString();
  }
}

class UserLinksBuilder implements Builder<UserLinks, UserLinksBuilder> {
  _$UserLinks _$v;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  String _html;
  String get html => _$this._html;
  set html(String html) => _$this._html = html;

  String _photos;
  String get photos => _$this._photos;
  set photos(String photos) => _$this._photos = photos;

  String _likes;
  String get likes => _$this._likes;
  set likes(String likes) => _$this._likes = likes;

  String _portfolio;
  String get portfolio => _$this._portfolio;
  set portfolio(String portfolio) => _$this._portfolio = portfolio;

  String _following;
  String get following => _$this._following;
  set following(String following) => _$this._following = following;

  String _followers;
  String get followers => _$this._followers;
  set followers(String followers) => _$this._followers = followers;

  UserLinksBuilder();

  UserLinksBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self;
      _html = _$v.html;
      _photos = _$v.photos;
      _likes = _$v.likes;
      _portfolio = _$v.portfolio;
      _following = _$v.following;
      _followers = _$v.followers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserLinks;
  }

  @override
  void update(void updates(UserLinksBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLinks build() {
    final _$result = _$v ??
        new _$UserLinks._(
            self: self,
            html: html,
            photos: photos,
            likes: likes,
            portfolio: portfolio,
            following: following,
            followers: followers);
    replace(_$result);
    return _$result;
  }
}

class _$UserTags extends UserTags {
  @override
  final BuiltList<UserTag> custom;
  @override
  final BuiltList<UserTag> aggregated;

  factory _$UserTags([void updates(UserTagsBuilder b)]) =>
      (new UserTagsBuilder()..update(updates)).build();

  _$UserTags._({this.custom, this.aggregated}) : super._() {
    if (custom == null) {
      throw new BuiltValueNullFieldError('UserTags', 'custom');
    }
    if (aggregated == null) {
      throw new BuiltValueNullFieldError('UserTags', 'aggregated');
    }
  }

  @override
  UserTags rebuild(void updates(UserTagsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTagsBuilder toBuilder() => new UserTagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserTags &&
        custom == other.custom &&
        aggregated == other.aggregated;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, custom.hashCode), aggregated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserTags')
          ..add('custom', custom)
          ..add('aggregated', aggregated))
        .toString();
  }
}

class UserTagsBuilder implements Builder<UserTags, UserTagsBuilder> {
  _$UserTags _$v;

  ListBuilder<UserTag> _custom;
  ListBuilder<UserTag> get custom =>
      _$this._custom ??= new ListBuilder<UserTag>();
  set custom(ListBuilder<UserTag> custom) => _$this._custom = custom;

  ListBuilder<UserTag> _aggregated;
  ListBuilder<UserTag> get aggregated =>
      _$this._aggregated ??= new ListBuilder<UserTag>();
  set aggregated(ListBuilder<UserTag> aggregated) =>
      _$this._aggregated = aggregated;

  UserTagsBuilder();

  UserTagsBuilder get _$this {
    if (_$v != null) {
      _custom = _$v.custom?.toBuilder();
      _aggregated = _$v.aggregated?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserTags other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserTags;
  }

  @override
  void update(void updates(UserTagsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserTags build() {
    _$UserTags _$result;
    try {
      _$result = _$v ??
          new _$UserTags._(
              custom: custom.build(), aggregated: aggregated.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'custom';
        custom.build();
        _$failedField = 'aggregated';
        aggregated.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserTags', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserTag extends UserTag {
  @override
  final String title;

  factory _$UserTag([void updates(UserTagBuilder b)]) =>
      (new UserTagBuilder()..update(updates)).build();

  _$UserTag._({this.title}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('UserTag', 'title');
    }
  }

  @override
  UserTag rebuild(void updates(UserTagBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTagBuilder toBuilder() => new UserTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserTag && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserTag')..add('title', title))
        .toString();
  }
}

class UserTagBuilder implements Builder<UserTag, UserTagBuilder> {
  _$UserTag _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  UserTagBuilder();

  UserTagBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserTag other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserTag;
  }

  @override
  void update(void updates(UserTagBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserTag build() {
    final _$result = _$v ?? new _$UserTag._(title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
