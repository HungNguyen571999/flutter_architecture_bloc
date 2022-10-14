import 'package:equatable/equatable.dart';

import 'screen_shot.dart';

class MovieImage extends Equatable {
  final List<Screenshot> backdrops;
  final List<Screenshot> posters;

  const MovieImage({
    this.backdrops = const [],
    this.posters = const [],
  });

  factory MovieImage.fromJson(Map<String, dynamic>? result) {
    if (result == null) {
      return const MovieImage();
    }

    return MovieImage(
      backdrops: (result['backdrops'] as List)
          .map((b) => Screenshot.fromJson(b))
          .toList(),
      posters: (result['posters'] as List)
          .map((b) => Screenshot.fromJson(b))
          .toList(),
    );
  }

  @override
  List<Object> get props => [backdrops, posters];
}
