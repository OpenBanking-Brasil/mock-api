# Project: openapi-mock-open-banking

## About this
This project allows users to run Open Banking Mocked Apis. This mocks are made with [OpenAPI Mock Server](https://github.com/muonsoft/openapi-mock).

Options to run:
- 1 - [Docker based on local machines](#getting-started-to-run-on-local-machine) or;
- 2 - [PWD - Play with Docker](#getting-started-to-run-in-the-cloud)*.

*PWD is a Docker playground which allows users to run Docker commands in a matter of seconds.


## Dependencies
* [Docker](https://www.docker.com/)
* [PWD - Play With Docker](https://labs.play-with-docker.com/) (It's alternative to expose the mock through internet running in the cloud).


## Getting started to run on local machine
1. Download and install [Docker](https://www.docker.com/).

2. Fork this repository on Github.

3. Clone your forked repository (not our original one) to your hard drive with git clone https://github.com/YOURUSERNAME/automacao-mock.git

4. Access directory automacao-mock. 
```bash
cd automacao-mock
```

5. Run the command bellow to start all containers. We have a container for each Open Banking Api. 

```bash
docker-compose up
```
This command will run the containers with de last released version of swaggers.

Alternatively it's possible to run a docker container individually.Example:

```bash
docker run -p [PORT:PORT] eumagnun/admin-api:[VERSAO]
```

[PORT]: Each API-MOCK runs ina specific port as follows:

- ADMIN_API_PORT: "7001"
- CHANNELS_API_PORT: "7002"
- COMMON_API_PORT: "7003"
- PRODUCTS_SERVICES_API_PORT: "7004"

[VERSION]: The version of Open Banking Specification. This field is required, today we´re not publishing a tag 'latest'.<br/>

Follows bellow a example:
```bash
docker run -p 7001:7001 eumagnun/admin-api:ver2020.01.18.002
```


7. Check if mock running typing this URL in your web browser:

```
http://127.0.0.1:8080/open-banking/discovery/v1/status
```

Alternatively it's possible check if run using this command to test:

```bash
curl http://localhost:7001/open-banking/admin/v1/metrics
```

If ok, one message like that is appear:

![Figura 1](/img/fig-01.jpg)



## Getting started to run in the cloud using PWD - Play with Docker
1. Access [PWD](https://labs.play-with-docker.com/) and start a new session with your [Docker Hub](https://hub.docker.com/) credentials.

![Figura 2](/img/fig-02.jpg)

2. Once your session is active click on "Add New Instance".

![Figura 3](/img/fig-03.jpg)

3. A new instance will start with a Docker Engine ready to accept commands.

![Figura 4](/img/fig-04.jpg)

4. Downloads an image of [OpenAPI Mock Server](https://github.com/muonsoft/openapi-mock)

```bash
docker pull eumagnun/admin-api:ver2020.01.18.002
```

![Figura 5](/img/fig-05.jpg)

5. Fork this repository on Github.

6. Clone your forked repository (not our original one) to your hard drive with git clone https://github.com/YOURUSERNAME/openapi-mock-open-banking.git

![Figura 11](/img/fig-11.jpg)

7. Access directory automacao-mock. 
```bash
cd automacao-mock
```

![Figura 6](/img/fig-06.jpg)

8. Run the image of automacao-mock
```bash
docker-compose up
```

![Figura 7](/img/fig-07.jpg)

Alternatively it's possible to run as a docker command:<br/>

```bash
docker run -p 8080:7001 eumagnun/admin-api:ver2020.01.18.002
```

9. At the end of the process you should see the message such as "Creating openapi_mock ... done". The option -p 8080:7001 exposes the container port 7001 as the host port 8080 to the world.

![Figura 8](/img/fig-08.jpg)

10. As a result a port 8080 link should have become active next to the IP. Click on it to access your openapi-mock-open-banking service using your web browser:
```
http://<YOUR_ID_PWD>.direct.labs.play-with-docker.com/open-banking/discovery/v1/status
```

![Figura 9](/img/fig-09.jpg)

Alternatively it's possible to run this command to test that the server successfully run:

```bash
curl 'http://<YOUR_ID_PWD>.direct.labs.play-with-docker.com/open-banking/discovery/v1/status'
```

If ok, one message like that is appear:

![Figura 10](/img/fig-10.jpg)

## REFERENCES
- [OpenAPI Mock Server](https://github.com/muonsoft/openapi-mock)
- [Docker](https://www.docker.com/)
- [PWD - Play With Docker](https://labs.play-with-docker.com/)
