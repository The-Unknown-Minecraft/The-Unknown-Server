<p align="center"><img src="media/logo.jpg" alt="Logo" width="150px"></p>

# The Unknown Server

This repository contains the configuration files for *The Unknown*, a Minecraft server. Please refer to [the wiki](https://github.com/The-Unknown-Minecraft/The-Unknown-Server/wiki) for non-technical information about the server.

## Contributing

There are many ways to contribute to the server. To find out how you can help, have a look at [the contributing guide](https://github.com/The-Unknown-Minecraft/The-Unknown-Server/wiki/Contributing).

If you would like to improve something in the server's configuration or its plugins, you can fork this project on GitHub and make the improvements yourself. Pull requests are welcome! (But not guaranteed to be merged; it may be better to open an issue first if you plan on making radical changes.) You can also click the Edit button (:pencil2:) to the top right of files in the repository. If you experience any problems, don't hesitate to send an email to the administrator!

## Plugins

Before (a new version of) a plugin is added, it should be checked if it creates any files that should be ignored by Git because it contains privacy-sensitive information. Such files should be included in `.gitignore` files in the appropriate directories.

## Setting up the server

We use Docker to run the server in a container. Some people may find it easier to run the server without installing Docker. You will then have to install some additional programs. If you use Docker, you only have to install Docker.

### Production

To run the server the same way as in production, you will need to install [Docker](https://www.docker.com) and [git-lfs](https://git-lfs.github.com/).

1. First get the jars in `bin/` using `git lfs pull`
1. Run `docker build -t the-unknown .`
1. Run `docker run -dit --mount type=bind,source=$(pwd)/server,destination=/data -p 25565:25565 --name minecraft the-unknown:latest`

To view the logs, run `docker logs minecraft`. To use the console, run `docker attach minecraft`. To detach from the console (but keep the server running), press `Ctrl + p` followed by `Ctrl q`.

Stop the server by running `stop` in the Minecraft console and pressing `Ctrl + c` when asked to.

To start the server again, run `docker start minecraft`. When any of the scripts in this repository is updated, you will need to re-build the image.

### World border

Because the world border information is kept in the world save files, this repository does not contain the border. To set it, run the following command:

`/worldborder set 18432`

## License

This project is licensed under the MIT license, which can be found in the file `LICENSE`.
