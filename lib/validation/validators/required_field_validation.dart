
import '../protocols/protocols.dart';

class RequiredFiledValidation implements FieldValidation{
  final String field;
  
  RequiredFiledValidation(this.field);

  String validate(String value){
    return value?.isNotEmpty  == true ? null : "Campo Obrigatório";
  }
} 