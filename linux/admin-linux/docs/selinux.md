# SELinux — planejado

SELinux aplica políticas de controle de acesso obrigatório, especialmente relevante na família RHEL. Modos comuns: `Enforcing`, `Permissive` e `Disabled`.

```bash
getenforce
ls -Z
ausearch -m AVC -ts recent
```

Não altere o modo global nem desabilite políticas automaticamente. Estude contextos, políticas e troubleshooting em uma VM descartável.
