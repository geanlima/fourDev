import '../protocols/protocols.dart';

class EmailValidation implements FieldValidation{
   final String field;
   
   EmailValidation(this.field);
   
   String validate(String value){     
     final regex = RegExp(r"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})");
     final isValid = value?.isNotEmpty != true || regex.hasMatch(value);
     return isValid ? null : 'Campo Inválido.';
   }
}