# Rede e diagnóstico

Ferramentas básicas para consulta: `ip`, `ping`, `ss`, `ip route`, `hostname`, `hostnamectl`, `curl` e `wget`.

```bash
ip addr
ip route
hostnamectl
ss -tuln
ping -c 3 127.0.0.1
curl --head https://example.com
```

Esses comandos ajudam a identificar interfaces, IPs, gateway, portas e conectividade. Use `wget` e `curl` somente para destinos confiáveis.

## Nmap

Use Nmap apenas em máquinas e redes próprias ou com autorização explícita. Um laboratório local pode começar por `nmap 127.0.0.1`; não faça varreduras em terceiros.
