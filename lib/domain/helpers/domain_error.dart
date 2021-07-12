enum DomainError{
  unexpected,
  invalidCredentials
}

extension DomainErrorExtencion on DomainError{
  String get description{
    switch(this){
      case DomainError.invalidCredentials: return 'Credenciais inválidas.';
      
      default: return 'Algo errado aconteceu. Tente novamente em breve.';
      
    }
  }
}

 