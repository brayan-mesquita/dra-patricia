---
status: 🚀 Ativo
categoria: Clínico
tags: [procedimentos, clinico, secretaria, index, faq]
created: 2026-06-06
---

# 📋 Base de Conhecimento — Procedimentos

> [!ABSTRACT] Para a Secretária
> Use esta base para consultar informações sobre qualquer procedimento antes de responder pacientes. Aqui você encontra descrição, principais dúvidas, pós-procedimento, produtos e exames necessários para cada tratamento.

---

## 💉 Harmonização Orofacial (HOF)

| Procedimento | Arquivo | Duração resultado |
|---|---|---|
| Toxina Botulínica (Botox) | [[BOTOX-TOXINA-BOTULINICA]] | 4-6 meses |
| Preenchimento Labial | [[PREENCHIMENTO-LABIAL]] | 8-12 meses |
| Bioestimuladores (Sculptra/Radiesse) | [[BIOESTIMULADORES]] | 12-18 meses |
| Cervicoplastia / Lipo de Papada | [[CERVICOPLASTIA-LIPO-PAPADA]] | Permanente |
| Fios de PDO | [[FIOS-PDO]] | 12-18 meses |
| Skinbooster | [[SKINBOOSTER]] | 4-6 meses |

---

## 🦷 Odontologia Estética

| Procedimento | Arquivo | Duração resultado |
|---|---|---|
| Clareamento Dental | [[CLAREAMENTO-DENTAL]] | 1-2 anos |
| Facetas / Lentes de Contato Dental | [[FACETAS-LENTES-CONTATO]] | 10-15 anos |

---

## 🔩 Implantes e Reabilitação

| Procedimento | Arquivo | Duração resultado |
|---|---|---|
| Implante Dentário | [[IMPLANTE-DENTARIO]] | Vida toda (com manutenção) |
| Prótese Dentária | [[PROTESE-DENTARIA]] | 5-10 anos |
| Reabilitação Oral Completa | [[REABILITACAO-ORAL]] | Variável |

---

## 😁 Ortodontia

| Procedimento | Arquivo | Duração resultado |
|---|---|---|
| Aparelho Ortodôntico | [[ORTODONTIA-APARELHO]] | Permanente (com contenção) |

---

## 🦷 Odontologia Geral

| Procedimento | Arquivo | Observação |
|---|---|---|
| Tratamento de Canal | [[TRATAMENTO-CANAL]] | Salva o dente — não dói (anestesia) |
| Restauração Dental | [[RESTAURACAO-DENTAL]] | Resina na cor do dente (1 sessão) |
| Extração de Siso | [[EXTRACAO-SISO]] | Cirurgia — pós-op de 5-7 dias |

---

> [!TIP] Como usar
> Clique em qualquer [[link]] para abrir a ficha completa do procedimento. Se um paciente fizer uma pergunta que não está aqui, registre para adicionar ao FAQ.

---

```dataview
TABLE
  tags AS "Tags",
  created AS "Criado"
FROM "3-OPERACOES/3.1-CLINICO/PROCEDIMENTOS"
WHERE tipo = "procedimento"
SORT file.name ASC
```
