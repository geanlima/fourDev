import 'package:flutter_test/flutter_test.dart';

import 'package:fordev/validation/validators/validators.dart';


void main(){

  RequiredFiledValidation sut;

  setUp((){
    sut = RequiredFiledValidation("any_field");
  });

  test('Shoult return null if value is not empty',(){
    
    final sut = RequiredFiledValidation("any_field");
    expect(sut.validate("any_value"), null);

 });

 test('Shoult return error if value is empty',(){
    
    expect(sut.validate(''), "Campo Obrigatório");

 });

 test('Shoult return error if value is null',(){
    
    expect(sut.validate(null), "Campo Obrigatório");

 });

}