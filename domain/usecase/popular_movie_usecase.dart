import 'package:dartz/dartz.dart';
import 'package:domain_layer/core/failure.dart';
import 'package:domain_layer/domain/entities/popular_movie_entity.dart';
import 'package:domain_layer/domain/repo/repo.dart';
import 'package:domain_layer/domain/usecase/base_usecase.dart';

class PopularUseCase extends BaseUseCase<NoParam, List<PopularMovieEntity>> {
  final Repository repository;

  PopularUseCase(this.repository);

  @override
  Future<Either<Failure, List<PopularMovieEntity>>> execute(
      NoParam param) async {
    return await repository.getPopularMovie(param);
  }
}

class NoParam {}
