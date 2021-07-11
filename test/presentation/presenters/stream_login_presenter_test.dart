import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:fordev/presentation/presenters/presenters.dart';
import 'package:fordev/presentation/protocols/protocols.dart';

class ValidationSky extends Mock implements Validation{}

void main() {

  StreamLoginPresenter sut;
  ValidationSky validation;
  String email;

  PostExpectation mockValidationCall(String field) => 
    when(validation.validate(field: field == null ? anyNamed('field') : field, value: anyNamed('value')));

  void mockValidation({String field, String value}){
    mockValidationCall(field).thenReturn(value);
  }    
    

  setUp((){
    validation = ValidationSky();
    sut = StreamLoginPresenter(validation: validation);
    email = faker.internet.email();
    mockValidation();
  });

  test('Should call validadtion with correct email', () {    
    sut.validateEmail(email);

    verify(validation.validate(field: 'email', value: email)).called(1);
  });

  test('Should emit email erro if validation fails', () {    
    mockValidation(value: 'error');

    expect(sut.emailErrorStream, emits('error'));

    sut.validateEmail(email);
    
  });
}
