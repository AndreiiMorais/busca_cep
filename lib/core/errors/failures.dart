import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class CepLengthFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class BadInputFailure extends Failure{
  @override
  List<Object?> get props => [];
}
