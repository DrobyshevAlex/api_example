import 'package:api_example/common/validators/form_validator.dart';

class EmailInput extends FormValidator<String> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty(String value,
      [ValidationError? error, List<String>? errors])
      : super.dirty(value, error, errors);

  @override
  ValidationError? validator(String value) {
    if (!value.contains('@') || value.length < 6) {
      return ValidationError.email;
    }
    return null;
  }

  @override
  EmailInput copyWithExtError(List<String>? errors) {
    return EmailInput.dirty(
        value, errors?.isNotEmpty == true ? ValidationError.ext : null, errors);
  }
}
