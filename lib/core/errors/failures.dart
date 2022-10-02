import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;

  const Failure({this.message});
}

class CepLengthFailure extends Failure {
  const CepLengthFailure({super.message});

  @override
  List<Object?> get props => [];
}

class BadInputFailure extends Failure {
  const BadInputFailure({super.message});
  @override
  List<Object?> get props => [];
}

class DuplicatedKeyFailure extends Failure {
  const DuplicatedKeyFailure({super.message});
  @override
  List<Object?> get props => [];
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({super.message});
  @override
  List<Object?> get props => [];
}

class UnknownDatasourceFailure extends Failure {
  const UnknownDatasourceFailure({super.message});
  @override
  List<Object?> get props => [];
}
