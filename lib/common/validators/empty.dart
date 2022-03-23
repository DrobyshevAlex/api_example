import 'package:api_example/common/validators/form_validator.dart';

class EmptyInput extends FormValidator<String> {
  const EmptyInput.pure() : super.pure('');
  const EmptyInput.dirty(String value,
      [ValidationError? error, List<String>? errors])
      : super.dirty(value, error, errors);

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) {
      return ValidationError.empty;
    }
    return null;
  }

  @override
  EmptyInput copyWithExtError(List<String>? errors) {
    return EmptyInput.dirty(
        value, errors?.isNotEmpty == true ? ValidationError.ext : null, errors);
  }
}
