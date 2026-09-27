# Docker no Linux

## Objetivo

Estudar daemon, imagens, containers, volumes, redes, Dockerfile, Compose e troubleshooting com um laboratório controlado.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
docker version
docker run --rm hello-world
docker ps -a
docker logs CONTAINER
# em uma VM de laboratório:
docker compose up -d
docker compose down
```

`docker run --rm` remove o container de teste; `ps -a` lista; `logs` consulta saída; Compose sobe e derruba a aplicação descrita. **SIMULAÇÃO / SAÍDA ESPERADA:** `Hello from Docker!`.

Prefira imagens oficiais ou verificadas, fixe versões e evite montar o socket Docker em containers.

## Laboratório sugerido

Em uma VM, execute `hello-world`, crie uma imagem mínima com `Dockerfile`, mapeie uma porta local e remova imagem/container ao finalizar.

## Segurança e rollback

O grupo `docker` equivale a privilégio elevado. Não use `--privileged` sem justificativa e não publique arquivos `.env`.

## Referências oficiais

- [Docker Docs](https://docs.docker.com/)
