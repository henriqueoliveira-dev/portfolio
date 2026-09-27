# Apache e VirtualHost local

## Objetivo

Configurar um servidor HTTP local, entender arquivos, permissões e logs, sem publicar um servidor real.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

### Debian/Ubuntu

```bash
sudo apt install apache2
sudo apache2ctl configtest
sudo systemctl status apache2
curl --head http://127.0.0.1
sudo journalctl -u apache2 --since today
```

`configtest` valida sintaxe; `curl` testa HTTP local; `journalctl` ajuda no diagnóstico. VirtualHost deve indicar `ServerName`, `DocumentRoot` e logs próprios. **SIMULAÇÃO / SAÍDA ESPERADA:** `Syntax OK` e `HTTP/1.1 200 OK`.

Não use `sudo systemctl restart` antes de `configtest`. Em RHEL, o pacote e o serviço normalmente se chamam `httpd`.

## Laboratório sugerido

Crie uma página estática em uma VM, configure um VirtualHost local, teste por `curl`, consulte access/error logs e remova o site.

## Segurança e rollback

Não abra portas públicas automaticamente. Restrinja permissões do DocumentRoot e não habilite módulos sem necessidade.

## Referências oficiais

- [Apache HTTP Server Documentation](https://httpd.apache.org/docs/)
