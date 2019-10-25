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
> docker run --rm -v ${PWD}/.oci:/root/.oci -it oci-cli:latest 《OCI CLI Command》
>```
>
> [OCI CLI Command Reference](https://docs.cloud.oracle.com/iaas/tools/oci-cli/latest/oci_cli_docs/)
>

---

### Example

> **Create config & Create API key**
>
> ```bash
> docker run --rm -v ${PWD}/.oci:/root/.oci -it oci-cli:latest setup config
> ```
>
>　Answer interactively after execution
>

---

> **Setup oci-cli-rc**
>
> ```bash
> docker run --rm -v ${PWD}/.oci:/root/.oci -it oci-cli:latest setup oci-cli-rc
> ```
>
>　Edit .oci/oci_cli_rc
>
> ```bash
> [DEFAULT]
> compartment-id = <Compartment OCID>
> ```

---

## Other

> ### alias
>
> Replace repository path
>
> ```bash:bashrc
> alias oci-cli='docker run --rm --mount type=bind,source=《Repository path》/.oci,target=/root/.oci -it oci-cli:latest "$@"'
> ```
>
> Use Command
>
> ```bash
> $ oci-cli --version
> 2.6.9
> ```
