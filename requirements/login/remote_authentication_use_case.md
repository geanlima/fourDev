# Remote Authentication Use Case

> ## Caso de sucesso
1. Sistema valida os dados
2. Sistema faz uma requisição para a URL da API de login
3. Sistema valida os dados de recebidos da API
4. Sistema entrega os dados da conta do usuário

> ## Exceção - URL Inválida
1. Sistema retorna mensagem de erro inesperado.

> ## Exceção - Dados Inválida
1. Sistema retorna mensagem de erro inesperado

> ## Exceção - Resposta Inválida
1. Sistema retorna mensagem de erro inesperado

> ## Exceção - Falha no Servidor
1. Sistema retorna mensagem de erro inesperado

> ## Exceção - Credenciais Inválida
1. Sistema retorna mensagem de erro informando que as credenciais estão inválidas