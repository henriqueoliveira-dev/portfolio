# Kubernetes introdutório

## Objetivo

Compreender cluster, node, pod, deployment, service, namespace e kubectl usando um cluster local controlado, sem infraestrutura de produção.

## Pré-requisitos e ambiente

Use uma VM Debian/Ubuntu descartável ou um host de laboratório autorizado. Os exemplos abaixo são **documentação**; qualquer saída apresentada está identificada como **SIMULAÇÃO / SAÍDA ESPERADA** e não representa uma execução real neste repositório.

## Conceitos principais

Este módulo explica o conceito, o motivo operacional e os impactos de cada ação. Antes de usar `sudo`, confirme o host, o usuário, o caminho e a possibilidade de rollback.

## Comandos e exemplos

```bash
kubectl version --client
kubectl get nodes
kubectl get pods -A
kubectl apply -f deployment.yaml
kubectl describe pod POD
kubectl delete -f deployment.yaml
```

`get` consulta; `apply` declara; `describe` detalha eventos; `delete` remove o laboratório. **SIMULAÇÃO / SAÍDA ESPERADA:** `pod/lab-web created` e `1/1 Running`.

Use kind, minikube ou ambiente equivalente apenas se instalado conscientemente. Valide contexto com `kubectl config current-context` antes de aplicar qualquer manifesto.

## Laboratório sugerido

Em cluster local, crie namespace de laboratório, deployment nginx com uma réplica, service local, consulte pods e remova o namespace.

## Segurança e rollback

Um contexto errado pode alterar um cluster real. Nunca execute `delete` sem confirmar contexto e namespace.

## Referências oficiais

- [Kubernetes Documentation](https://kubernetes.io/docs/)
