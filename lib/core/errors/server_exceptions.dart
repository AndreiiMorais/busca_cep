import 'package:equatable/equatable.dart';

abstract class ServerException extends Equatable implements Exception {}

class BadRequestException extends ServerException {
  final String? message;

  BadRequestException({this.message});
  @override
  List<Object?> get props => [];
}

class NotFoundException extends ServerException {
  final String? message;

  NotFoundException({this.message});
  @override
  List<Object?> get props => [];
}

class UnknownDatasourceException extends ServerException {
  final String? message;

  UnknownDatasourceException({this.message});
  @override
  List<Object?> get props => [];
}
