# nginx-ingress-controller-with-lua-resty-openidc

## Purpose
This project can help you to easily build and push to your Docker Hub an image containing nginx-ingress-controller (at the version you want) + the necessary setup to use **lua** directives (typically *access_by_lua_block*) and require **resty.openidc** library (currently hardcoded to version 1.7.6) in your Nginx configured snippets. 

## Building
### Locally
You can customize the *Makefile* then run `make build` command.

Beware if you are using a laptop with a M1 chip or similar, you may need to add the flag `--platform linux/amd64` to the *docker build command* with the right value for your k8s cluster architecture.
### Gitlab pipeline
You can customize the *.gitlab-ci.yml* file then use it in one of your Gitlab repos.

## License
[MIT License](/LICENSE)
