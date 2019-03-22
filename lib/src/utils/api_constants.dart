class ApiConstants {
  static const baseUrl = 'https://api.unsplash.com/';
  static const accessKey = '';
  static const requestHeaders = {
    'Accept-Version': 'v1',
    'Authorization': 'Client-ID $accessKey'
  };
}

class PhotosSortOrder {
  static const latest = 'latest';
  static const oldest = 'oldest';
  static const popular = 'popular';
}
