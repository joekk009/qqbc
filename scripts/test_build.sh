#!/bin/bash

docker build -t eosio/test ./docker

docker tag eosio/test gcr.io/b1ops-devel/eosio/test
docker push gcr.io/b1ops-devel/eosio/test

docker rmi eosio/test
docker rmi gcr.io/b1ops-devel/eosio/test