import 'package:flutter_test/flutter_test.dart';
import 'package:fordev/validation/protocols/protocols.dart';


class EmailValidation implements FieldValidation{
   final String field;
   
   EmailValidation(this.field);
   
   String validate(String value){     
     final regex = RegExp(r"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})");
     final isValid = value?.isNotEmpty != true || regex.hasMatch(value);
     return isValid ? null : 'Campo Inválido.';
   }
}

void main(){

  EmailValidation sut;

  setUp((){
    sut = EmailValidation('any_field');
  });

  test('Should return null if email is empty',(){
    expect(sut.validate(''), null);
 });

 test('Should return null if email is null',(){
    expect(sut.validate(null), null);
 });

 test('Should return null if email is valid',(){
    expect(sut.validate('geansilvalima@gmail.com'), null);
 });

 test('Should return error if email is invalid',(){
    expect(sut.validate('geansilvalima'), 'Campo Inválido.');
 });
}