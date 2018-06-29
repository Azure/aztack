#!/bin/bash -eux

kubernetes_release_tag="v1.10.4"

export DEBIAN_FRONTEND=noninteractive
apt_flags=(-o "Dpkg::Options::=--force-confnew" -qy)

apt-get update -q
apt-get upgrade "${apt_flags[@]}"

apt-get install "${apt_flags[@]}" conntrack ipset socat jq traceroute ca-certificates
