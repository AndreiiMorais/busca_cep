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


class ClosedHiveBoxFailure extends Failure {
  const ClosedHiveBoxFailure({super.message});
  @override
  List<Object?> get props => [];
}

class DuplicatedKeyFailure extends Failure {
  const DuplicatedKeyFailure({super.message});
  @override
  List<Object?> get props => [];
}


