# nfs
Network File System test

## Установка стенда

Используйте этот [Vagrantfile](Vagrantfile)

## Что сделано?

1. команда vagrant up поднимает 2 виртуалки: сервер и клиент
1. на сервере создана и расшарена директория
1. одна из поддиректорий `upload` создана с правами на запись
1. выполнены требования для NFS: NFSv3 по UDP, включенный firewall

## Cпособ достижения

Фактически все вышеупомянутые действия выполняются скриптом,\
содержащим команды для [сервера](nfss_script.sh) и [клиента](nfsc_script.sh)