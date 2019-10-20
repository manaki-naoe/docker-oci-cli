# docker-oci-cli

Oracle Cloud Command Line Interface for Docker

---

## Build Image

```bash
docker build -t oci-cli .
```

## Run Command

### How to use

> **※Note**
> 
> Run in the repository
>
> ```bash
> docker run --rm --mount type=bind,source=${PWD}/.oci,target=/root/.oci > -it oci-cli:latest 《oci cli command》
>```
> [OCI CLI Command Reference](https://docs.cloud.oracle.com/iaas/tools/oci-cli/latest/oci_cli_docs/)
>

---

### Example

> **Create config & Create API key**
> 
> ```bash
> docker run --rm --mount type=bind,source=${PWD}/.oci,target=/root/.oci > -it oci-cli:latest setup config
> ```
>　Answer interactively after execution
>

---

## Other

> ### alias
>
> Replace repository path
> ```bash:bash_profile
> alias oci='docker run --rm --mount type=bind,source=《Repository path》/.oci,target=/root/.oci -it oci-cli:latest "$@"'
> ```
>
> Use Command
>
> ```bash
> $ oci --version
> 2.6.9
> ```