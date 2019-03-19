// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final int width;
  @override
  final int height;
  @override
  final String color;
  @override
  final String description;
  @override
  final PhotoLocation location;
  @override
  final PhotoExif exif;
  @override
  final int viewCount;
  @override
  final int likeCount;
  @override
  final int downloadCount;
  @override
  final User user;
  @override
  final PhotoUrls urls;
  @override
  final PhotoLinks links;

  factory _$Photo([void updates(PhotoBuilder b)]) =>
      (new PhotoBuilder()..update(updates)).build();

  _$Photo._(
      {this.id,
      this.createdAt,
      this.width,
      this.height,
      this.color,
      this.description,
      this.location,
      this.exif,
      this.viewCount,
      this.likeCount,
      this.downloadCount,
      this.user,
      this.urls,
      this.links})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Photo', 'id');
    }
    if (urls == null) {
      throw new BuiltValueNullFieldError('Photo', 'urls');
    }
  }

  @override
  Photo rebuild(void updates(PhotoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        createdAt == other.createdAt &&
        width == other.width &&
        height == other.height &&
        color == other.color &&
        description == other.description &&
        location == other.location &&
        exif == other.exif &&
        viewCount == other.viewCount &&
        likeCount == other.likeCount &&
        downloadCount == other.downloadCount &&
        user == other.user &&
        urls == other.urls &&
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
                                                    $jc($jc(0, id.hashCode),
                                                        createdAt.hashCode),
                                                    width.hashCode),
                                                height.hashCode),
                                            color.hashCode),
                                        description.hashCode),
                                    location.hashCode),
                                exif.hashCode),
                            viewCount.hashCode),
                        likeCount.hashCode),
                    downloadCount.hashCode),
                user.hashCode),
            urls.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('width', width)
          ..add('height', height)
          ..add('color', color)
          ..add('description', description)
          ..add('location', location)
          ..add('exif', exif)
          ..add('viewCount', viewCount)
          ..add('likeCount', likeCount)
          ..add('downloadCount', downloadCount)
          ..add('user', user)
          ..add('urls', urls)
          ..add('links', links))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  PhotoLocationBuilder _location;
  PhotoLocationBuilder get location =>
      _$this._location ??= new PhotoLocationBuilder();
  set location(PhotoLocationBuilder location) => _$this._location = location;

  PhotoExifBuilder _exif;
  PhotoExifBuilder get exif => _$this._exif ??= new PhotoExifBuilder();
  set exif(PhotoExifBuilder exif) => _$this._exif = exif;

  int _viewCount;
  int get viewCount => _$this._viewCount;
  set viewCount(int viewCount) => _$this._viewCount = viewCount;

  int _likeCount;
  int get likeCount => _$this._likeCount;
  set likeCount(int likeCount) => _$this._likeCount = likeCount;

  int _downloadCount;
  int get downloadCount => _$this._downloadCount;
  set downloadCount(int downloadCount) => _$this._downloadCount = downloadCount;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  PhotoUrlsBuilder _urls;
  PhotoUrlsBuilder get urls => _$this._urls ??= new PhotoUrlsBuilder();
  set urls(PhotoUrlsBuilder urls) => _$this._urls = urls;

  PhotoLinksBuilder _links;
  PhotoLinksBuilder get links => _$this._links ??= new PhotoLinksBuilder();
  set links(PhotoLinksBuilder links) => _$this._links = links;

  PhotoBuilder();

  PhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _width = _$v.width;
      _height = _$v.height;
      _color = _$v.color;
      _description = _$v.description;
      _location = _$v.location?.toBuilder();
      _exif = _$v.exif?.toBuilder();
      _viewCount = _$v.viewCount;
      _likeCount = _$v.likeCount;
      _downloadCount = _$v.downloadCount;
      _user = _$v.user?.toBuilder();
      _urls = _$v.urls?.toBuilder();
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photo;
  }

  @override
  void update(void updates(PhotoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: id,
              createdAt: createdAt,
              width: width,
              height: height,
              color: color,
              description: description,
              location: _location?.build(),
              exif: _exif?.build(),
              viewCount: viewCount,
              likeCount: likeCount,
              downloadCount: downloadCount,
              user: _user?.build(),
              urls: urls.build(),
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'exif';
        _exif?.build();

        _$failedField = 'user';
        _user?.build();
        _$failedField = 'urls';
        urls.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PhotoLocation extends PhotoLocation {
  @override
  final String title;
  @override
  final String name;
  @override
  final String city;
  @override
  final String country;
  @override
  final PhotoLocationPosition position;

  factory _$PhotoLocation([void updates(PhotoLocationBuilder b)]) =>
      (new PhotoLocationBuilder()..update(updates)).build();

  _$PhotoLocation._(
      {this.title, this.name, this.city, this.country, this.position})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('PhotoLocation', 'title');
    }
    if (position == null) {
      throw new BuiltValueNullFieldError('PhotoLocation', 'position');
    }
  }

  @override
  PhotoLocation rebuild(void updates(PhotoLocationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoLocationBuilder toBuilder() => new PhotoLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoLocation &&
        title == other.title &&
        name == other.name &&
        city == other.city &&
        country == other.country &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), name.hashCode), city.hashCode),
            country.hashCode),
        position.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoLocation')
          ..add('title', title)
          ..add('name', name)
          ..add('city', city)
          ..add('country', country)
          ..add('position', position))
        .toString();
  }
}

class PhotoLocationBuilder
    implements Builder<PhotoLocation, PhotoLocationBuilder> {
  _$PhotoLocation _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  PhotoLocationPositionBuilder _position;
  PhotoLocationPositionBuilder get position =>
      _$this._position ??= new PhotoLocationPositionBuilder();
  set position(PhotoLocationPositionBuilder position) =>
      _$this._position = position;

  PhotoLocationBuilder();

  PhotoLocationBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _name = _$v.name;
      _city = _$v.city;
      _country = _$v.country;
      _position = _$v.position?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoLocation;
  }

  @override
  void update(void updates(PhotoLocationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoLocation build() {
    _$PhotoLocation _$result;
    try {
      _$result = _$v ??
          new _$PhotoLocation._(
              title: title,
              name: name,
              city: city,
              country: country,
              position: position.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'position';
        position.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PhotoLocation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PhotoLocationPosition extends PhotoLocationPosition {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$PhotoLocationPosition(
          [void updates(PhotoLocationPositionBuilder b)]) =>
      (new PhotoLocationPositionBuilder()..update(updates)).build();

  _$PhotoLocationPosition._({this.latitude, this.longitude}) : super._();

  @override
  PhotoLocationPosition rebuild(void updates(PhotoLocationPositionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoLocationPositionBuilder toBuilder() =>
      new PhotoLocationPositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoLocationPosition &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoLocationPosition')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class PhotoLocationPositionBuilder
    implements Builder<PhotoLocationPosition, PhotoLocationPositionBuilder> {
  _$PhotoLocationPosition _$v;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  PhotoLocationPositionBuilder();

  PhotoLocationPositionBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoLocationPosition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoLocationPosition;
  }

  @override
  void update(void updates(PhotoLocationPositionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoLocationPosition build() {
    final _$result = _$v ??
        new _$PhotoLocationPosition._(latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

class _$PhotoExif extends PhotoExif {
  @override
  final String make;
  @override
  final String model;
  @override
  final String exposureTime;
  @override
  final String aperture;
  @override
  final String focalLength;
  @override
  final int iso;

  factory _$PhotoExif([void updates(PhotoExifBuilder b)]) =>
      (new PhotoExifBuilder()..update(updates)).build();

  _$PhotoExif._(
      {this.make,
      this.model,
      this.exposureTime,
      this.aperture,
      this.focalLength,
      this.iso})
      : super._() {
    if (make == null) {
      throw new BuiltValueNullFieldError('PhotoExif', 'make');
    }
    if (model == null) {
      throw new BuiltValueNullFieldError('PhotoExif', 'model');
    }
    if (exposureTime == null) {
      throw new BuiltValueNullFieldError('PhotoExif', 'exposureTime');
    }
    if (aperture == null) {
      throw new BuiltValueNullFieldError('PhotoExif', 'aperture');
    }
    if (focalLength == null) {
      throw new BuiltValueNullFieldError('PhotoExif', 'focalLength');
    }
    if (iso == null) {
      throw new BuiltValueNullFieldError('PhotoExif', 'iso');
    }
  }

  @override
  PhotoExif rebuild(void updates(PhotoExifBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoExifBuilder toBuilder() => new PhotoExifBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoExif &&
        make == other.make &&
        model == other.model &&
        exposureTime == other.exposureTime &&
        aperture == other.aperture &&
        focalLength == other.focalLength &&
        iso == other.iso;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, make.hashCode), model.hashCode),
                    exposureTime.hashCode),
                aperture.hashCode),
            focalLength.hashCode),
        iso.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoExif')
          ..add('make', make)
          ..add('model', model)
          ..add('exposureTime', exposureTime)
          ..add('aperture', aperture)
          ..add('focalLength', focalLength)
          ..add('iso', iso))
        .toString();
  }
}

class PhotoExifBuilder implements Builder<PhotoExif, PhotoExifBuilder> {
  _$PhotoExif _$v;

  String _make;
  String get make => _$this._make;
  set make(String make) => _$this._make = make;

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _exposureTime;
  String get exposureTime => _$this._exposureTime;
  set exposureTime(String exposureTime) => _$this._exposureTime = exposureTime;

  String _aperture;
  String get aperture => _$this._aperture;
  set aperture(String aperture) => _$this._aperture = aperture;

  String _focalLength;
  String get focalLength => _$this._focalLength;
  set focalLength(String focalLength) => _$this._focalLength = focalLength;

  int _iso;
  int get iso => _$this._iso;
  set iso(int iso) => _$this._iso = iso;

  PhotoExifBuilder();

  PhotoExifBuilder get _$this {
    if (_$v != null) {
      _make = _$v.make;
      _model = _$v.model;
      _exposureTime = _$v.exposureTime;
      _aperture = _$v.aperture;
      _focalLength = _$v.focalLength;
      _iso = _$v.iso;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoExif other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoExif;
  }

  @override
  void update(void updates(PhotoExifBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoExif build() {
    final _$result = _$v ??
        new _$PhotoExif._(
            make: make,
            model: model,
            exposureTime: exposureTime,
            aperture: aperture,
            focalLength: focalLength,
            iso: iso);
    replace(_$result);
    return _$result;
  }
}

class _$PhotoUrls extends PhotoUrls {
  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  factory _$PhotoUrls([void updates(PhotoUrlsBuilder b)]) =>
      (new PhotoUrlsBuilder()..update(updates)).build();

  _$PhotoUrls._({this.raw, this.full, this.regular, this.small, this.thumb})
      : super._() {
    if (raw == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'raw');
    }
    if (full == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'full');
    }
    if (regular == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'regular');
    }
    if (small == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'small');
    }
    if (thumb == null) {
      throw new BuiltValueNullFieldError('PhotoUrls', 'thumb');
    }
  }

  @override
  PhotoUrls rebuild(void updates(PhotoUrlsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoUrlsBuilder toBuilder() => new PhotoUrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoUrls &&
        raw == other.raw &&
        full == other.full &&
        regular == other.regular &&
        small == other.small &&
        thumb == other.thumb;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, raw.hashCode), full.hashCode), regular.hashCode),
            small.hashCode),
        thumb.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoUrls')
          ..add('raw', raw)
          ..add('full', full)
          ..add('regular', regular)
          ..add('small', small)
          ..add('thumb', thumb))
        .toString();
  }
}

class PhotoUrlsBuilder implements Builder<PhotoUrls, PhotoUrlsBuilder> {
  _$PhotoUrls _$v;

  String _raw;
  String get raw => _$this._raw;
  set raw(String raw) => _$this._raw = raw;

  String _full;
  String get full => _$this._full;
  set full(String full) => _$this._full = full;

  String _regular;
  String get regular => _$this._regular;
  set regular(String regular) => _$this._regular = regular;

  String _small;
  String get small => _$this._small;
  set small(String small) => _$this._small = small;

  String _thumb;
  String get thumb => _$this._thumb;
  set thumb(String thumb) => _$this._thumb = thumb;

  PhotoUrlsBuilder();

  PhotoUrlsBuilder get _$this {
    if (_$v != null) {
      _raw = _$v.raw;
      _full = _$v.full;
      _regular = _$v.regular;
      _small = _$v.small;
      _thumb = _$v.thumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoUrls other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoUrls;
  }

  @override
  void update(void updates(PhotoUrlsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoUrls build() {
    final _$result = _$v ??
        new _$PhotoUrls._(
            raw: raw, full: full, regular: regular, small: small, thumb: thumb);
    replace(_$result);
    return _$result;
  }
}

class _$PhotoLinks extends PhotoLinks {
  @override
  final String self;
  @override
  final String html;
  @override
  final String download;
  @override
  final String downloadLocation;

  factory _$PhotoLinks([void updates(PhotoLinksBuilder b)]) =>
      (new PhotoLinksBuilder()..update(updates)).build();

  _$PhotoLinks._({this.self, this.html, this.download, this.downloadLocation})
      : super._() {
    if (self == null) {
      throw new BuiltValueNullFieldError('PhotoLinks', 'self');
    }
    if (html == null) {
      throw new BuiltValueNullFieldError('PhotoLinks', 'html');
    }
    if (download == null) {
      throw new BuiltValueNullFieldError('PhotoLinks', 'download');
    }
    if (downloadLocation == null) {
      throw new BuiltValueNullFieldError('PhotoLinks', 'downloadLocation');
    }
  }

  @override
  PhotoLinks rebuild(void updates(PhotoLinksBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoLinksBuilder toBuilder() => new PhotoLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhotoLinks &&
        self == other.self &&
        html == other.html &&
        download == other.download &&
        downloadLocation == other.downloadLocation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, self.hashCode), html.hashCode), download.hashCode),
        downloadLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhotoLinks')
          ..add('self', self)
          ..add('html', html)
          ..add('download', download)
          ..add('downloadLocation', downloadLocation))
        .toString();
  }
}

class PhotoLinksBuilder implements Builder<PhotoLinks, PhotoLinksBuilder> {
  _$PhotoLinks _$v;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  String _html;
  String get html => _$this._html;
  set html(String html) => _$this._html = html;

  String _download;
  String get download => _$this._download;
  set download(String download) => _$this._download = download;

  String _downloadLocation;
  String get downloadLocation => _$this._downloadLocation;
  set downloadLocation(String downloadLocation) =>
      _$this._downloadLocation = downloadLocation;

  PhotoLinksBuilder();

  PhotoLinksBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self;
      _html = _$v.html;
      _download = _$v.download;
      _downloadLocation = _$v.downloadLocation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhotoLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhotoLinks;
  }

  @override
  void update(void updates(PhotoLinksBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PhotoLinks build() {
    final _$result = _$v ??
        new _$PhotoLinks._(
            self: self,
            html: html,
            download: download,
            downloadLocation: downloadLocation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
