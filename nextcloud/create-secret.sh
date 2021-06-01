#!/bin/bash
kubectl create secret generic nextcloud-db-secret \
    --from-literal=MYSQL_ROOT_PASSWORD=r00tpasswdreplaceme \
    --from-literal=MYSQL_USER=nextcloud \
    --from-literal=MYSQL_PASSWORD=u3srpasswdreplaceme