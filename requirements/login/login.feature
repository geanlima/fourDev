Feature login

Como um cliente:
  Quero poder acessar minha conta e me manter logado 
  Para que eu possa ver e responder enquetes de forma rápida

Cenário: Credenciais Válidas  
 Dado que o cliente informou credenciais válidas
 Quando solicitar para fazer um login
 Então o sistema deve enviar o usuário para uma tela de pesquisa
 E manter o usuário conectado

Cenário: Credenciais Inválidas  
 Dado que o cliente informou credenciais inválidas
 Quando solicitar para fazer um login
 Então o sistema deve retornar uma mensagem de erro
 
 