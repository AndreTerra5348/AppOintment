import 'package:dartz/dartz.dart';

abstract class Validator<T_Failure, T_Value> {
  Either<T_Failure, T_Value> call(T_Value value);
}
