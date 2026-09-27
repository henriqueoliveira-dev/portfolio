# SSH

SSH fornece acesso remoto criptografado. Práticas recomendadas incluem chaves protegidas, usuários individuais, atualização do serviço, restrição de origem e logs.

```bash
ssh usuario@host-de-laboratorio
ss -tln | grep ':22'
systemctl status ssh
```

Não publique chaves privadas nem habilite acesso remoto em uma máquina sem compreender firewall e autenticação.
