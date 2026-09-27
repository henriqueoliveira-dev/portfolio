# MongoDB no Linux

## Objetivo

Compreender serviço, documentos, usuários, backup e restauração em ambiente de laboratório, sem criar servidor de produção.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
sudo systemctl status mongod
mongosh --eval 'db.runCommand({ ping: 1 })'
mongodump --db banco_lab --out ./dump-lab
mongorestore --db banco_restaurado ./dump-lab/banco_lab
```

`mongosh` consulta; `ping` verifica disponibilidade; `mongodump` exporta; `mongorestore` importa. **SIMULAÇÃO / SAÍDA ESPERADA:** `{ ok: 1 }`.

A autenticação e os nomes de serviço variam por versão/distribuição; consulte a documentação instalada antes de usar comandos.

## Laboratório sugerido

Use dados fictícios, crie uma coleção pequena, faça dump, restaure e conte documentos. Remova a pasta de dump depois de validar.

## Segurança e rollback

Não exponha MongoDB na rede sem autenticação e firewall. Dumps podem conter dados sensíveis.

## Referências oficiais

- [MongoDB Manual](https://www.mongodb.com/docs/manual/)
