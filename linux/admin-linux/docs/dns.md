# DNS, resolução e diagnóstico

## Objetivo

Entender clientes DNS, registros e o ciclo de resolução; documentar BIND sem fingir que um servidor foi configurado.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
getent hosts example.com
dig example.com A
dig @127.0.0.1 example.com
nslookup example.com
resolvectl status
```

`getent` usa a configuração do sistema; `dig` mostra consulta e autoridade; `@server` escolhe o servidor; `resolvectl` exibe estado do resolvedor. **SIMULAÇÃO / SAÍDA ESPERADA:** `status: NOERROR` e `ANSWER: 1`.

Em BIND, valide arquivos com `named-checkconf` e zonas com `named-checkzone` antes de recarregar.

## Laboratório sugerido

Use uma VM para criar uma zona privada de laboratório, consulte registros A e CNAME, compare resposta autoritativa e cache, e remova a zona ao fim.

## Segurança e rollback

DNS incorreto pode afetar todo o host. Não substitua `/etc/resolv.conf` sem saber quem o gerencia; confira NetworkManager ou systemd-resolved.

## Referências oficiais

- [BIND 9 Administrator Reference Manual](https://bind9.readthedocs.io/)
- [DNS RFC index](https://www.rfc-editor.org/)
