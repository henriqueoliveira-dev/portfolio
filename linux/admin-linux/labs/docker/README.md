# Laboratório: container local

## Objetivo
Executar um container descartável, consultar logs e removê-lo.

```bash
docker run --name admin-linux-lab --rm hello-world
docker ps -a
```

`--rm` remove o container após terminar. **SIMULAÇÃO / SAÍDA ESPERADA:** `Hello from Docker!`.

## Validação e limpeza
Confirme que não há container do laboratório com `docker ps -a --filter name=admin-linux-lab`. Se usar volumes, remova apenas os volumes criados pelo exercício. Não use `--privileged`.
