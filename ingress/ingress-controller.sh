#!/usr/bin/env bash

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx \
&& helm repo update \
&& helm install ingress-nginx ingress-nginx/ingress-nginx --set "controller.extraArgs.enable-ssl-passthrough=true" --create-namespace -n ingress