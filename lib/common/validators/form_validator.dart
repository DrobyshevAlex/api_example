import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum ValidationError { empty, email, ext }

@immutable
abstract class FormValidator<T> extends FormzInput<T, ValidationError> {
  const FormValidator.dirty(T value, [this.extError, this.errorList])
      : super.dirty(value);

  const FormValidator.pure(T value)
      : extError = null,
        errorList = null,
        super.pure(value);

  final List<String>? errorList;
  final ValidationError? extError;

  String? get errorMessage => errorList?.join('\n');

  @override
  ValidationError? get error => extError ?? super.error;
  //ValidationError? get error => pure ? null : extError ?? super.error;

  @override
  bool get valid => error == null;

  @override
  int get hashCode =>
      value.hashCode ^ pure.hashCode ^ extError.hashCode ^ error.hashCode;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is FormValidator<T> &&
        other.value == value &&
        other.extError == extError &&
        other.pure == pure &&
        other.error != error;
  }

  FormValidator copyWithExtError(List<String>? errors);
}
