import 'package:equatable/equatable.dart';

class PopularMovieEntity extends Equatable {
  final int id;
  final String originalLang;
  final String title;

  const PopularMovieEntity(this.id, this.originalLang, this.title);

  @override
  List<Object?> get props => [originalLang];
}

class UserEntity{
  final String email;

  UserEntity(this.email);
}