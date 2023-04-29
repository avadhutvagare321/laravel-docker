<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

You may also try the [Laravel Bootcamp](https://bootcamp.laravel.com), where you will be guided through building a modern Laravel application from scratch.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 2000 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[OP.GG](https://op.gg)**
- **[WebReinvent](https://webreinvent.com/?utm_source=laravel&utm_medium=github&utm_campaign=patreon-sponsors)**
- **[Lendio](https://lendio.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).


## Docker Setup
## Docker Commands : 

- Check the status of `docker` containers status

```
docker ps
```

`docker` command we can use globally.

- To manage multiple containers

```
docker-compose ps
```

`docker-compose` command works on directory we use. It also checks the Dockerfile in directory as well.

- To check `docker compose` version 

```
docker compose version
```

- The command `docker-compose up --build` is used to start Docker containers based on the services defined in a Docker Compose file. The `--build` flag tells Docker Compose to build any images that are defined in the Compose file before starting the containers.

```
docker-compose up --build
```

- When you run this command, Docker Compose will look for a `docker-compose.yml` file in the current directory and use it to create and start the containers. If the `--build` flag is specified, it will first build any images that are defined in the Compose file, based on the instructions in their respective Dockerfiles.

- Here is a breakdown of the individual components of the command:

`docker-compose`: This is the command-line tool used to manage Docker containers defined in a Docker Compose file.
`up`: This command tells Docker Compose to start the containers.
`--build`: This flag tells Docker Compose to build any images that are defined in the Compose file before starting the containers.

- Overall, running `docker-compose up --build` is a convenient way to start a set of Docker containers defined in a Compose file and ensure that any necessary images are built before they are started.

- The `docker-compose down` command is used to stop and remove the containers, networks, and volumes created by `docker-compose up`.

```
docker-compose down
```

- When you run `docker-compose down`, Docker Compose will stop and remove all containers that were created using the `docker-compose up` command, as well as any networks and volumes that were created specifically for those containers.

- The `docker-compose up -d` command is used to start the containers defined in a Docker Compose file in detached mode, which means the containers run in the background and the command prompt becomes available for further commands.

```
docker-compose up -d
```

- When you run this command, Docker Compose will start the containers defined in the Compose file and return control to the command prompt. The containers will continue to run in the background, and you can use other commands to manage them as needed.

`-d`: This flag, short for "detached", tells Docker Compose to run the containers in the background.

- Overall, running `docker-compose up -d` is a convenient way to start the containers defined in a Compose file and continue working on the command prompt without being tied to the running containers.


```
docker-compose down && docker-compose up
```

```
docker-compose down && docker-compose up -d
```

- To run commands inside docker container

```
docker exec <docker-container-name> <command-to-run>
```

- Example : 

```
docker exec laravel-docker-php-1 php artisan
```

- Here `laravel-docker-php-1` is the container name and the `php artisan` is the command that run inside that container.

- If you want go inside the container and run commands and do something use the command

```
docker exec -it <docker-container-name> /bin/sh
```

- Example : 

```
docker exec -it laravel-docker-php-1 /bin/sh 
```

- To see the `docker` container logs you can run the command

```
docker logs <docker-container-name>
```

- Example :

```
docker logs laravel-docker-php-1
```

- Here `laravel-docker-php-1` is the docker container name.