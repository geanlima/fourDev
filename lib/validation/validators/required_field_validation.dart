import 'package:equatable/equatable.dart';

import '../protocols/protocols.dart';

class RequiredFiledValidation extends Equatable implements FieldValidation{
  
  final String field;  
  List get props => [field];

  RequiredFiledValidation(this.field);

  String validate(String value){
    return value?.isNotEmpty  == true ? null : "Campo Obrigatório";
  }
} 