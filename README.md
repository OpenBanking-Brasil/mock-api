# Projeto: OpenBanking-Brasil | mock-api


## Sobre
Esse projeto viabiliza a execução de mocks das apis Open Banking Brasil. Esses mocks são gerados com base na documentação Swagger oficial através do [OpenAPI Mock Server](https://github.com/muonsoft/openapi-mock).

Opções para execução:
- 1 - [Container Docker local](#op%C3%A7%C3%A3o-1---rodando-o-container-docker-localmente) ou
- 2 - [Container Docker via PWD-Play with Docker](#op%C3%A7%C3%A3o-2---rodando--o-container-na-nuvem-com-pwd---play-with-docker)*.

*PWD é uma solução de sandbox do Docker que possibilita a execução de containers para fins de testes em segundos.

## Dependências
* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [PWD - Play With Docker](https://labs.play-with-docker.com/) (Alternativa para execução de Docker na nuvem).


## Opção 1 - Rodando o container Docker localmente
1. Baixe e instale o [Docker](https://www.docker.com/) e o [Docker Compose](https://docs.docker.com/compose/install/).

2. Crie um fork desse repositório no Github.

3. Clone seu repositório forked (não o original) para sua máquina 
```bash
git clone https://github.com/YOURUSERNAME/mock-api.git
```
4. Accesse o diretório mock-api. 
```bash
cd mock-api
```

5. Rode o comando abaixo para iniciar o container. 
</br>
Esse comando irá baixar a imagem e executar o container, a versão do Swagger considerada será a que consta no arquivo ".env", por padrão essa versão corresponde à última publicada.

Se for necessário rodar o mock com uma versão específica basta editar o arquivo ".env" antes de executar o comando abaixo:

```bash
docker-compose up
```

6. Informe a URL abaixo a fim de verificar se o mock está em execução corretamente.

```
http://localhost:7001/open-banking/discovery/v1/status
```

Outra opção é executar se o mock está OK através do CURL:

```bash
curl http://localhost:7001/open-banking/admin/v1/metrics
```

Se tudo estiver OK, você vai receber uma resposta para a requisição semelhante a esta:

![Figura 1](/img/fig-01.jpg)


## Opção 2 - Rodando  o container na nuvem com PWD - Play with Docker
1. Acesse [PWD](https://labs.play-with-docker.com/) e inicie uma nova sessão com suas credênciais do [Docker Hub](https://hub.docker.com/).

![Figura 2](/img/fig-02.jpg)


2. Uma vez logado, clique em "Add New Instance".

![Figura 3](/img/fig-03.jpg)

3. Uma nova instância será iniciada com o Docker pronto para uso.

![Figura 4](/img/fig-04.jpg)

4. Agora rode o comando abaixo:

```bash
docker run -p 7001:7001 openbankingbrasil/open-banking:v1.0.0-rc5.3
```

O Docker vai realizar o download da imagem e iniciar o container. No fim do processo será exibida a mensagem "Starting server on port 7001".

![Figura 5](/img/fig-05.jpg)

5. Agora é possível clicar na porta 7001 conforme destacado abaixo:

![Figura 11](/img/fig-11.jpg)

6. Será exibida uma tela branca com a seguinte mensagem:

![Figura 6](/img/fig-12.jpg)

7. Complemente a URL com o path de algum recurso da API em execução, nesse caso, da api ADMIN. Será exibida uma resposta mockada conforme abaixo.

![Figura 6](/img/fig-10.jpg)

8. Todos as url´s das API´s podem ser verificadas em [Open Banking Developer Portal](https://openbanking-brasil.github.io/areadesenvolvedor/#apis-comuns-canais-de-atendimento-eletronico)

![Figura 7](/img/fig-07.jpg)

## REFERÊNCIAS
- [Open Banking Brasil DockerHub](https://hub.docker.com/u/openbankingbrasil)
- [Open Banking Brasil Developer Portal](https://openbanking-brasil.github.io/areadesenvolvedor/#apis-comuns-canais-de-atendimento-eletronico)
- [OpenAPI Mock Server](https://github.com/muonsoft/openapi-mock)
- [Docker](https://www.docker.com/)
- [PWD - Play With Docker](https://labs.play-with-docker.com/)
