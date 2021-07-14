import '../../../../presentation/protocols/protocols.dart';
import '../../../../validation/validators/validators.dart';

Validation makeLoginValidation(){

  return ValidationComposite([
    RequiredFiledValidation('email'),
    EmailValidation('email'),
    RequiredFiledValidation('password')
  ]);
}