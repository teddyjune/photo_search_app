class Hits {
  Hits({
      this.id, 
      this.pageURL, 
      this.type, 
      this.tags, 
      this.previewURL, 
      this.previewWidth, 
      this.previewHeight, 
      this.webformatURL, 
      this.webformatWidth, 
      this.webformatHeight, 
      this.largeImageURL, 
      this.imageWidth, 
      this.imageHeight, 
      this.imageSize, 
      this.views, 
      this.downloads, 
      this.collections, 
      this.likes, 
      this.comments, 
      this.userId, 
      this.user, 
      this.userImageURL,});

  Hits.fromJson(dynamic json) {
    id = json['id'];
    pageURL = json['pageURL'];
    type = json['type'];
    tags = json['tags'];
    previewURL = json['previewURL'];
    previewWidth = json['previewWidth'];
    previewHeight = json['previewHeight'];
    webformatURL = json['webformatURL'];
    webformatWidth = json['webformatWidth'];
    webformatHeight = json['webformatHeight'];
    largeImageURL = json['largeImageURL'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
    imageSize = json['imageSize'];
    views = json['views'];
    downloads = json['downloads'];
    collections = json['collections'];
    likes = json['likes'];
    comments = json['comments'];
    userId = json['user_id'];
    user = json['user'];
    userImageURL = json['userImageURL'];
  }
  num? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  num? previewWidth;
  num? previewHeight;
  String? webformatURL;
  num? webformatWidth;
  num? webformatHeight;
  String? largeImageURL;
  num? imageWidth;
  num? imageHeight;
  num? imageSize;
  num? views;
  num? downloads;
  num? collections;
  num? likes;
  num? comments;
  num? userId;
  String? user;
  String? userImageURL;
Hits copyWith({  num? id,
  String? pageURL,
  String? type,
  String? tags,
  String? previewURL,
  num? previewWidth,
  num? previewHeight,
  String? webformatURL,
  num? webformatWidth,
  num? webformatHeight,
  String? largeImageURL,
  num? imageWidth,
  num? imageHeight,
  num? imageSize,
  num? views,
  num? downloads,
  num? collections,
  num? likes,
  num? comments,
  num? userId,
  String? user,
  String? userImageURL,
}) => Hits(  id: id ?? this.id,
  pageURL: pageURL ?? this.pageURL,
  type: type ?? this.type,
  tags: tags ?? this.tags,
  previewURL: previewURL ?? this.previewURL,
  previewWidth: previewWidth ?? this.previewWidth,
  previewHeight: previewHeight ?? this.previewHeight,
  webformatURL: webformatURL ?? this.webformatURL,
  webformatWidth: webformatWidth ?? this.webformatWidth,
  webformatHeight: webformatHeight ?? this.webformatHeight,
  largeImageURL: largeImageURL ?? this.largeImageURL,
  imageWidth: imageWidth ?? this.imageWidth,
  imageHeight: imageHeight ?? this.imageHeight,
  imageSize: imageSize ?? this.imageSize,
  views: views ?? this.views,
  downloads: downloads ?? this.downloads,
  collections: collections ?? this.collections,
  likes: likes ?? this.likes,
  comments: comments ?? this.comments,
  userId: userId ?? this.userId,
  user: user ?? this.user,
  userImageURL: userImageURL ?? this.userImageURL,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pageURL'] = pageURL;
    map['type'] = type;
    map['tags'] = tags;
    map['previewURL'] = previewURL;
    map['previewWidth'] = previewWidth;
    map['previewHeight'] = previewHeight;
    map['webformatURL'] = webformatURL;
    map['webformatWidth'] = webformatWidth;
    map['webformatHeight'] = webformatHeight;
    map['largeImageURL'] = largeImageURL;
    map['imageWidth'] = imageWidth;
    map['imageHeight'] = imageHeight;
    map['imageSize'] = imageSize;
    map['views'] = views;
    map['downloads'] = downloads;
    map['collections'] = collections;
    map['likes'] = likes;
    map['comments'] = comments;
    map['user_id'] = userId;
    map['user'] = user;
    map['userImageURL'] = userImageURL;
    return map;
  }

}