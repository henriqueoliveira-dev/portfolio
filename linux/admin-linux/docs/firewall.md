# Firewall

Firewall controla tráfego conforme regras. Em Debian/Ubuntu, `ufw` pode oferecer uma camada simples; `nftables` é uma base moderna. Em RHEL, ferramentas como `firewalld` são comuns.

```bash
sudo ufw status verbose
sudo nft list ruleset
sudo firewall-cmd --state
```

Não aplique regras sem console de recuperação ou plano de retorno: uma regra incorreta pode bloquear o acesso legítimo.
