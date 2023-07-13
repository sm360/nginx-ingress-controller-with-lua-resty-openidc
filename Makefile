# Choose the official NGINX Ingress controller version you need here : https://github.com/kubernetes/ingress-nginx/releases
BASE_REPO="registry.k8s.io/ingress-nginx/controller"
VERSION="v1.8.1"
YOUR_HUB="TYPE_YOUR_HUB"

build:
	docker build -t ${YOUR_HUB}/nginx-ingress-controller:${VERSION} . --build-arg BASE_REPO=${BASE_REPO} --build-arg VERSION=${VERSION} && \
	docker push ${YOUR_HUB}/nginx-ingress-controller:${VERSION}
