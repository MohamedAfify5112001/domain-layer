import 'package:dartz/dartz.dart';
import 'package:domain_layer/core/failure.dart';
import 'package:domain_layer/domain/entities/popular_movie_entity.dart';
import 'package:domain_layer/domain/usecase/login_usecase.dart';

abstract class Repository {
  Future<Either<Failure, List<PopularMovieEntity>>> getPopularMovie();

  Future<Either<Failure, UserEntity>> login(LoginRequest loginRequest);
}
