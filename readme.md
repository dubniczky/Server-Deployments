# Server Deployments

Server deployment containers for different frameworks

[[_TOC_]]

## Disclaimer

These container images are not "final". They serve as a base to start out and in most cases work as-is with your project for quick testing.

Please read the [Docker documentation](https://docs.docker.com/) and set up certificates before deploying these containers.

## Frameworks

> Version: lastest release of framework where the deployment was tested. It might require modifications in later versions.

|Framework|Version|Stages|Tags|
|---|---|---|---|
|[Angular](/angular)|`v13.3`|2|`angular`, `nginx`, `nodejs`, `ts`, `html`, `yarn`, `npm`, `npx`|
|[FastAPI](/fastapi)|`v3.10`|1|`python`, `python3`, `pip`, `fastapi`, `uvicorn`|
|[Go](/go)|`v1.18.2`|2|`go`, `golang`, `mux`, `alpine`|
|[Laravel](/laravel)|`v9.1.8`|1|`php`, `laravel`, `artisan`, `composer`, `npm`|
|[NodeJS](/nodejs)|`v16.15.0 LTS`|1|`nodejs`, `js`, `yarn`, `npm`, `npx`, `pnpm`, `pm2`|
|[React](/react)|`v18.1.0`|2|`react`, `nodejs`, `js`, `html`, `yarn`, `npm`, `npx`|

## Usage

### 1. Move to project

Move the `Dockerfile` and `.dockerignore` files into your project root. 

### 2. Update ignore

Update `.dockerignore` to ignore everything you will not need for your deployment. Ideally you should ignore:

- Everything that's in your `.gitignore`
- Git folder (`.git/`)
- Build files and binaries
- Caches
- Installed packages
- Tests (and their config)
- Logs
- Readme files and licenses
- IDE specific files
- Docker specific files
- etc...

As a rule of thumb, consider every file you deploy to be accessible for attackers in a breach, so remove all secret information, even after running the application (like `.env` file with login details).

### 3. Check Dockerfile

Check if the current Dockerfile settings work with your project. Some Dockerfiles contain multiple methods for package management. Checklist:

- Exposed ports
- Package manager
- Included necessary files
- Correct entrypoint

### 4. Build container

Build container with the given name and tag. Tag can be a version or a subtype of your project, like `wip`.

> This command may require you to have administrator privileges

```bash
docker build -t <name>:<tag> .
```

### 5. Run container locally

Run the container and expose the given ports. Docker can forward those ports to another external one.

> This command may require you to have administrator privileges

```bash
docker run -p<port_ext>:<port_int> <name>:<tag>
```

Test the container to see if everything is working and it's available from your browsers.

### 6. Deploy your container

Deploy to the provider of your choice. This step may be different for each provider, so seek further instruction in their documentation.

## LICENSE

General MIT license: [view](/LICENSe)