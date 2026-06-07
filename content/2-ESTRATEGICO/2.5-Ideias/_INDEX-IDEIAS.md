---
tipo: indice
categoria: Estratégico
tags: [ideias, inovacao, estrategia, index]
created: 2026-06-05
---

# 💡 Banco de Ideias — Clínica Dra. Patrícia

> [!ABSTRACT] Como usar esta pasta
> Registre aqui qualquer ideia de negócio, produto, serviço ou processo — mesmo que ainda não madura. O objetivo é **não perder nenhuma ideia** e retomá-las no momento certo.

---

## 📊 Ideias por Status

```dataview
TABLE
  titulo AS "Ideia",
  status AS "Status",
  categoria AS "Categoria",
  created AS "Registrada em"
FROM "2-ESTRATEGICO/2.5-Ideias"
WHERE tipo = "ideia"
SORT created DESC
```

---

## 🏷️ Status possíveis

| Status | Significado |
|--------|-------------|
| 💡 Ideia bruta | Registrada, ainda não analisada |
| 🔍 Em análise | Sendo estudada/validada |
| ✅ Aprovada | Decidiu implementar |
| 🚀 Em execução | Já em andamento |
| ❌ Descartada | Avaliada e descartada (com motivo) |
| 🧊 Congelada | Boa ideia, mas não é o momento |
