# Prometheus e métricas

## Objetivo

Estudar coleta de métricas, targets, exporters e consultas em ambiente local, tratando monitoramento avançado como conhecimento em evolução.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
curl http://127.0.0.1:9090/-/ready
curl http://127.0.0.1:9090/api/v1/query --data-urlencode 'query=up'
```

O primeiro endpoint verifica prontidão; o segundo consulta a API. **SIMULAÇÃO / SAÍDA ESPERADA:** `{"status":"success","data":{"resultType":"vector"...}}`.

Um `node_exporter` expõe métricas do host; restrinja a interface e firewall. Targets devem ser descobertos e validados, não inventados.

## Laboratório sugerido

Use Docker Compose em uma VM para Prometheus e exporter, configure um target local, consulte `up` e remova os containers. Não publique métricas do seu host.

## Segurança e rollback

Não exponha a porta 9090 sem autenticação/rede protegida; métricas podem revelar arquitetura.

## Referências oficiais

- [Prometheus Documentation](https://prometheus.io/docs/)
