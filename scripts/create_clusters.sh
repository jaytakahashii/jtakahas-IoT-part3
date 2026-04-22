#!/bin/bash

# https://k3d.io/v5.3.0/usage/commands/k3d_cluster_create/
# 3ノード構成のクラスタを作成
k3d cluster create mycluster --servers 1 --agents 2

# ノードの状態を確認
kubectl get nodes

# nginx を 3つ起動する設定（Deployment）を作成
# https://kubernetes.io/docs/reference/kubectl/generated/kubectl_create/kubectl_create_deployment/
kubectl create deployment my-web --image=nginx:latest --replicas=3
