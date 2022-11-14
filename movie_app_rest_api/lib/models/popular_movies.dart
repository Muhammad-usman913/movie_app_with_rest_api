class PopularMovies {
  PopularMovies({
      dynamic? page,
      List<Results>? results,
    dynamic? totalPages,
    dynamic? totalResults,}){
    _page = page;
    _results = results;
    _totalPages = totalPages;
    _totalResults = totalResults;
    print('The page number is $_page');
}

  PopularMovies.fromJson(Map<String,dynamic> json) {
    _page = json['page'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
    _totalPages = json['total_pages'];
    _totalResults = json['total_results'];
  }
  dynamic? _page;
  List<Results>? _results;
  dynamic? _totalPages;
  dynamic? _totalResults;
PopularMovies copyWith({  dynamic? page,
  List<Results>? results,
  dynamic? totalPages,
  dynamic? totalResults,
}) => PopularMovies(  page: page ?? _page,
  results: results ?? _results,
  totalPages: totalPages ?? _totalPages,
  totalResults: totalResults ?? _totalResults,
);
  dynamic? get page => _page;
  List<Results>? get results => _results;
  dynamic? get totalPages => _totalPages;
  dynamic? get totalResults => _totalResults;

  Map<dynamic, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = _page;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = _totalPages;
    map['total_results'] = _totalResults;
    return map;
  }

}

class Results {
  Results({
    dynamic? adult,
    dynamic? backdropPath,
      List<int>? genreIds,
    dynamic? id,
    dynamic? originalLanguage,
    dynamic? originalTitle,
    dynamic? overview,
    dynamic? popularity,
    dynamic? posterPath,
    dynamic? releaseDate,
    dynamic? title,
    dynamic? video,
    dynamic? voteAverage,
    dynamic? voteCount,}){
    _adult = adult;
    _backdropPath = backdropPath;
    _genreIds = genreIds;
    _id = id;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
}

  Results.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }
  dynamic? _adult;
  dynamic? _backdropPath;
  List<int>? _genreIds;
  dynamic? _id;
  dynamic? _originalLanguage;
  dynamic? _originalTitle;
  dynamic? _overview;
  dynamic? _popularity;
  dynamic? _posterPath;
  dynamic? _releaseDate;
  dynamic? _title;
  dynamic? _video;
  dynamic? _voteAverage;
  dynamic? _voteCount;
Results copyWith({  dynamic? adult,
  dynamic? backdropPath,
  List<int>? genreIds,
  dynamic? id,
  dynamic? originalLanguage,
  dynamic? originalTitle,
  dynamic? overview,
  dynamic? popularity,
  dynamic? posterPath,
  dynamic? releaseDate,
  dynamic? title,
  dynamic? video,
  dynamic? voteAverage,
  dynamic? voteCount,
}) => Results(  adult: adult ?? _adult,
  backdropPath: backdropPath ?? _backdropPath,
  genreIds: genreIds ?? _genreIds,
  id: id ?? _id,
  originalLanguage: originalLanguage ?? _originalLanguage,
  originalTitle: originalTitle ?? _originalTitle,
  overview: overview ?? _overview,
  popularity: popularity ?? _popularity,
  posterPath: posterPath ?? _posterPath,
  releaseDate: releaseDate ?? _releaseDate,
  title: title ?? _title,
  video: video ?? _video,
  voteAverage: voteAverage ?? _voteAverage,
  voteCount: voteCount ?? _voteCount,
);
  dynamic? get adult => _adult;
  dynamic? get backdropPath => _backdropPath;
  List<dynamic>? get genreIds => _genreIds;
  dynamic? get id => _id;
  dynamic? get originalLanguage => _originalLanguage;
  dynamic? get originalTitle => _originalTitle;
  dynamic? get overview => _overview;
  dynamic? get popularity => _popularity;
  dynamic? get posterPath => _posterPath;
  dynamic? get releaseDate => _releaseDate;
  dynamic? get title => _title;
  dynamic? get video => _video;
  dynamic? get voteAverage => _voteAverage;
  dynamic? get voteCount => _voteCount;

  Map<dynamic, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    map['genre_ids'] = _genreIds;
    map['id'] = _id;
    map['original_language'] = _originalLanguage;
    map['original_title'] = _originalTitle;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['release_date'] = _releaseDate;
    map['title'] = _title;
    map['video'] = _video;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

}