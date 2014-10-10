# Vagrant Docker

A Vagrant image with Docker pre-installed. Nothing else.

## Info

This is a VirtualBox `ubuntu/trusty` image that provisions the latest version of Docker, *and nothing else*. I use this image in place of Boot2Docker on my Mac because it gives me greater control over my environment and is easily configurable via a `Vagrantfile`.

## Usage

```
$ vagrant init isinn/docker
```
