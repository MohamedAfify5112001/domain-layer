import 'package:dartz/dartz.dart';
import 'package:domain_layer/core/failure.dart';
import 'package:domain_layer/domain/entities/popular_movie_entity.dart';
import 'package:domain_layer/domain/repo/repo.dart';
import 'package:domain_layer/domain/usecase/base_usecase.dart';
import 'package:domain_layer/domain/usecase/popular_movie_usecase.dart';

class LoginUseCase extends BaseUseCase<LoginRequest, UserEntity> {
  final Repository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> execute(LoginRequest param) async {
    return await repository.login(param);
  }
}
class LoginRequest {
  final String email;
  final String pass;

  LoginRequest(this.email, this.pass);
}
