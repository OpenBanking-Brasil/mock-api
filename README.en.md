# Project: OpenBanking-Brasil | mock-api

## About
This project allows users to run Open Banking Mocked Apis. This mocks are made with [OpenAPI Mock Server](https://github.com/muonsoft/openapi-mock).

Options to run:
- 1 - [Docker based on local machines](#option-1---getting-started-to-run-on-local-machine) or;
- 2 - [PWD - Play with Docker](#option-2---getting-started-to-run-in-the-cloud-using-pwd---play-with-docker)*.

*PWD is a Docker playground which allows users to run Docker commands in a matter of seconds.


## Dependencies
* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [PWD - Play With Docker](https://labs.play-with-docker.com/) (It's alternative to expose the mock through internet running in the cloud).


## Option 1 - Getting started to run on local machine
1. Download and install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/)

2. Fork this repository on Github.

3. Clone your forked repository (not our original one) to your hard drive with 
```bash
git clone https://github.com/YOURUSERNAME/mock-api.git
```
4. Access directory mock-api. 
```bash
cd mock-api
```

5. Run the command bellow to start the container. 

```bash
docker-compose up
```
This command will download the image and run the container with de swagger version  contained in the ".env" file. By default this version is the last published version.

</br>
</br>

6. Check if mock running typing this URL in your web browser:

```
http://localhost:7001/open-banking/discovery/v1/status
```

Alternatively it's possible check if run using this command to test:

```bash
curl http://localhost:7001/open-banking/discovery/v1/status
```

If ok, you will see the mocked response:

![Figura 1](/img/fig-01.jpg)



## Option 2 - Getting started to run in the cloud using PWD - Play with Docker
1. Access [PWD](https://labs.play-with-docker.com/) and start a new session with your [Docker Hub](https://hub.docker.com/) credentials.

![Figura 2](/img/fig-02.jpg)


2. Once your session is active click on "Add New Instance".

![Figura 3](/img/fig-03.jpg)

3. A new instance will start with a Docker Engine ready to accept commands.

![Figura 4](/img/fig-04.jpg)

4. Now run the comand below:

```bash
docker run -p 7001:7001 openbankingbrasil/open-banking:v1.0.0-rc5.3
```
Docker will start to download the images e run the container. At the end,  the console will show the message "Starting server on port 7001".

![Figura 5](/img/fig-05.jpg)

5. Now you can click on the port 7001 highlighted.

![Figura 11](/img/fig-11.jpg)

6. So, you will see a white screen with this message.

![Figura 6](/img/fig-12.jpg)

7. Complement the url with the path of one of the API. And you will see the mocked response.

![Figura 6](/img/fig-10.jpg)

8. All the API paths can be found on the [Open Banking Developer Portal](https://openbanking-brasil.github.io/areadesenvolvedor/#apis-comuns-canais-de-atendimento-eletronico)

![Figura 7](/img/fig-07.jpg)

## REFERENCES
- [Open Banking Brasil DockerHub](https://hub.docker.com/u/openbankingbrasil)
- [Open Banking Brasil Developer Portal](https://openbanking-brasil.github.io/areadesenvolvedor/#apis-comuns-canais-de-atendimento-eletronico)
- [OpenAPI Mock Server](https://github.com/muonsoft/openapi-mock)
- [Docker](https://www.docker.com/)
- [PWD - Play With Docker](https://labs.play-with-docker.com/)
