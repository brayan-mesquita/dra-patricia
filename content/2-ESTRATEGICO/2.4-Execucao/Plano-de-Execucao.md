---
status: ativo
categoria: planejamento
data: 2026-04-28
tags:
  - planejamento
  - execucao
  - metas
  - obsidian-tasks
---
# 🚀 Plano de Execução Estratégica

Este painel centraliza as ações estratégicas para corrigir gargalos operacionais e acelerar a **Meta de R$ 100K/mês** da clínica da Dra. Patrícia Nogueira.

> [!INFO] Instruções de Uso
> Marque as tarefas como concluídas nos arquivos de origem (como [[Acoes]]) ou diretamente aqui. O Dataview atualizará o painel automaticamente.

## 📊 Dashboard de Tarefas Pendentes
```dataview
TASK
FROM "execucao-estrategica"
WHERE !completed
GROUP BY due
SORT due ASC
```

## 🛠️ Matriz de Responsabilidades e Prazos

### 🧑‍💼 Alexssandra (Secretária / CRC)
> **Foco:** Encantamento, Conversão Inicial e Filtro de Agenda.
- [ ] Alterar discurso de agendamento usando **Gatilho de Escassez** e **Ancoragem de Preço (R$ 150 -> Isento)**. 📅 2026-04-30
- [ ] Implementar o limite na agenda de apenas **2 avaliações por dia** (ex: 14h e 14h15). 📅 2026-04-30
- [ ] Desenvolver **Roteiro de Recepção** focado no encantamento (Chegada e Saída). 📅 2026-05-05

### 📊 Brayan (Gestão e Financeiro)
> **Foco:** Organização financeira, infraestrutura de pagamentos e regras de negócio.
- [ ] Configurar sistema **Asaas** (Automação, Boletos, Cartão). 📅 2026-05-02
- [ ] Definir e documentar **Preços, Regras de Parcelamento e Descontos**. 📅 2026-05-02
- [ ] Estruturar o modelo de **Controle de Comissões** para pacientes indicadores. 📅 2026-05-10

### 👩‍⚕️ Dra. Patrícia Nogueira (Clínico e Comercial)
> **Foco:** Fechamento de alto ticket, relacionamento e estratégia comercial.
- [ ] Alinhar com a equipe as **Técnicas de Fechamento** de avaliações. 📅 2026-05-05
- [ ] Validar o processo e scripts de **Follow-up** de vendas. 📅 2026-05-05

---
> [!TIP] Gestão de Gargalos
> Revise este documento semanalmente nas reuniões de alinhamento para garantir que nenhum bloqueio operacional atrapalhe o atingimento da meta principal.
