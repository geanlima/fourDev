import 'package:flutter_test/flutter_test.dart';
 
import 'package:fordev/main/factories/factories.dart';
import 'package:fordev/validation/validators/validators.dart';

void main(){
  test('Should return the correct validations',(){
    final validations = makeLoginValidations();
    expect(validations, [
      RequiredFiledValidation('email'),
      EmailValidation('email'),
      RequiredFiledValidation('password')
    ]);
 });
}