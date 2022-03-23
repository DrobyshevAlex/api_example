import 'package:api_example/common/validators/form_validator.dart';

class SimpleInput extends FormValidator<String> {
  const SimpleInput.pure() : super.pure('');
  const SimpleInput.dirty(String value,
      [ValidationError? error, List<String>? errors])
      : super.dirty(value, error, errors);

  @override
  ValidationError? validator(String value) => null;

  @override
  SimpleInput copyWithExtError(List<String>? errors) {
    return SimpleInput.dirty(
        value, errors?.isNotEmpty == true ? ValidationError.ext : null, errors);
  }
}
