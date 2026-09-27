# Rede e diagnóstico local/remoto

## Objetivo

Diagnosticar interfaces, endereços, rotas, DNS, portas e conectividade separando observação local de teste remoto autorizado.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
ip -brief addr
ip route
ss -tulpen
hostnamectl
ping -c 3 127.0.0.1
curl --head https://example.com
```

`ip addr` mostra interfaces; `ip route` mostra gateway; `ss` lista sockets; `ping` testa ICMP; `curl` testa uma aplicação HTTP. **SIMULAÇÃO / SAÍDA ESPERADA:** `default via 192.0.2.1 dev eth0` — o bloco 192.0.2.0/24 é reservado para documentação.

Para DNS, use `getent hosts example.com`, `dig` ou `nslookup` quando instalados. `traceroute` revela saltos, mas pode ser filtrado. Nmap deve ser restrito a `127.0.0.1`, laboratório próprio ou autorização explícita.

## Laboratório sugerido

Em uma VM, registre interface e rota, teste loopback, consulte uma resolução de nome e examine portas locais com `ss`. Compare uma falha de DNS com uma falha de rota.

## Segurança e rollback

Não exponha IPs reais no README. Um ping sem resposta não prova que o host está desligado; firewall e ICMP podem explicar.

## Referências oficiais

- [iproute2](https://man7.org/linux/man-pages/man8/ip.8.html)
- [OpenBSD nc](https://man.openbsd.org/nc)
