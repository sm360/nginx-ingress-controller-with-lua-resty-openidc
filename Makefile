# Choose the official NGINX Ingress controller version you need here : https://github.com/kubernetes/ingress-nginx/blob/main/Changelog.md
BASE_REPO="k8s.gcr.io/ingress-nginx/controller"
VERSION="v0.49.0"

YOUR_HUB="TYPE_YOUR_HUB"

build:
	docker build -t ${YOUR_HUB}/nginx-ingress-controller:${VERSION} . --build-arg BASE_REPO=${BASE_REPO} --build-arg VERSION=${VERSION} && \
	docker push ${YOUR_HUB}/nginx-ingress-controller:${VERSION}
