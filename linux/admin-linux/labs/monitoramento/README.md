# Laboratório: monitoramento básico

## Objetivo
Coletar duas amostras locais e comparar CPU, memória, disco e serviços.

```bash
../../scripts/monitor.sh > /tmp/amostra-1.txt
sleep 10
../../scripts/monitor.sh > /tmp/amostra-2.txt
diff -u /tmp/amostra-1.txt /tmp/amostra-2.txt || true
```

## Validação
Identifique variações e confirme com `ps`, `free` ou `df`. Ausência de `sensors`, `ufw` ou `firewall-cmd` é aceitável e deve aparecer como ferramenta indisponível.

## Segurança
Não publique as amostras: elas podem revelar hostname, usuários, IPs e serviços do host.
