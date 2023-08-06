import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) =>
      Actor(
        id: cast.id, 
        name: cast.name, 
        profilePath: cast.profilePath != null
        ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
        : 'https://i.pinimg.com/474x/da/96/36/da96366c7bbcd35a11507a543b63d3a1.jpg',
        character: cast.character
  );
}
