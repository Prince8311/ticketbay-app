import 'package:fpdart/fpdart.dart';
import 'package:ticket_bay/core/shared/miscellaneous/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
