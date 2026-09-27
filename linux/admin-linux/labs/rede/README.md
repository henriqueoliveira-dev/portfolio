# Laboratório: diagnóstico de rede

## Objetivo
Separar interface, rota, DNS, porta e aplicação em uma investigação local.

## Passos

```bash
ip -brief addr
ip route
getent hosts example.com
ss -tuln
ping -c 2 127.0.0.1
```

Cada comando responde uma pergunta diferente: endereços, gateway, resolução, sockets e loopback.

```text
SIMULAÇÃO / SAÍDA ESPERADA
lo UNKNOWN 127.0.0.1/8
127.0.0.1 localhost
```

## Validação e troubleshooting

Se DNS falhar, compare `getent` com `resolvectl status`; se a aplicação falhar, veja portas com `ss`; se ping falhar, considere firewall/ICMP. Nmap somente em alvo próprio ou autorizado.

## Limpeza
Nenhuma alteração é feita; o laboratório é somente consulta.
