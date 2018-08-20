# eth-dev-kit
Simple docker-compose setup for development use.  Allows interacting with a private local Ethereum node via http or https

## Project Structure

Also, there are a couple of different directories:

| Directory               | Written in          | Purpose                                                                                                                                                                                                                                    |
|:------------------------|:--------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| `bin`                   | NodeJs              | Contains helper scripts that aids in different aspects. For now, there's only one scrip called `monkey-cli` that helps to produce fake blocks / txs and contract deployments for testing purposes. More utils will come eventually.        |
| `postman`               | Postman (Js)        | A simple Postman collection that contains all `ethereum` JSON RPC calls.                                                                                                                                                                   |
| `docker-compose.yml`    | Docker              | For keeping everything sane and to produce a replicable environment in all machines, uses `docker` and `docker compose` as its development orchestrator.                                                                                 |

## Getting Started

These instructions will get you a copy of a Parity Ethereum node up and running on your local machine for development and testing puposes.

#### Endpoints:
HTTPS: https://localhost:7545 \
HTTP:  http://localhost:8545

#### Config:
To add pre-filled accounts edit the accounts key in the file parity/config/parity.json \
 - For syntax and advanced usage see: [Parity Chain Specification](https://wiki.parity.io/Chain-specification)

## Developing

Now that you have done sucessfully the prerequisites steps (yay!), it's time to get your hands dirty. Just make sure you have installed `docker` and `docker-compose` (the more recent, the better).

In order to bring up the project you can issue the following command in the terminal:

```sh
$ docker-compose up -d
```

To stop:

```sh
$ docker-compose stop
```
And to check the logs:

```sh
$ docker-compose logs -f
$ docker-compose logs -f parity # (you can specify the service name to gather specific logs also)
```

As you can see, these are just regular `docker-compose` commands, so if you have any related questions, navigate to the [official documentation](https://docs.docker.com/compose/) as it will cover basic and more advanced stuff.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
