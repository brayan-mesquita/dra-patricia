---
status: ⚙️ Configuração
categoria: CRM
sistema: Kommo
data: 2026-05-05
tags: [crm, kommo, automacao, instagram, marketing]
---

# 🤖 Automação Kommo: Convite para Seguir o Instagram

Esta automação visa aumentar a base de seguidores qualificados (pacientes reais) no Instagram da clínica, aproveitando um momento de interação positiva no funil de vendas do Kommo.

## 📍 Momento Ideal no Funil (Gatilho)
O melhor momento para disparar essa automação não é no primeiro contato (que pode parecer invasivo e desfocar da venda), mas sim após um micro-compromisso.

**Fases Recomendadas no Funil do Kommo:**
- **Após Agendamento Confirmado:** Quando o paciente confirma que irá à consulta (ele já confia o suficiente para agendar).
- **Pós-Avaliação (Orçamento Entregue):** Enquanto o paciente pensa sobre o tratamento, os conteúdos do Instagram podem ajudar na conversão.

## ⚙️ Estrutura da Automação (Salesbot do Kommo)

Como o Kommo não sabe magicamente se o paciente segue ou não o Instagram sem uma integração complexa via API, a estratégia mais inteligente e nativa é usar um fluxo interativo no Salesbot.

### Passo 1: O Gatilho de Mudança de Etapa
Configure o Salesbot para iniciar quando o Lead for movido para a etapa: **"Agendamento Confirmado"** (ou a etapa escolhida).

### Passo 2: O Delay (Pausa)
Para não parecer um robô instantâneo:
- Adicione um bloco de **Pausa (Time Delay)** de `15 a 30 minutos` após a mudança de etapa.

### Passo 3: A Mensagem Interativa (Botões)
O bot enviará uma mensagem educada com botões de resposta rápida.

> [!TIP] Mensagem do Bot
> "Oi, [Nome do Lead]! Seu horário já está garantido aqui na clínica. 💙
> 
> Enquanto o dia da sua consulta não chega, eu queria saber: você já acompanha o trabalho da Dra. Patrícia lá no nosso Instagram? Lá nós postamos muitos casos reais de transformação e dicas que podem te ajudar."
> 
> **Botões:**
> [Já sigo!] 
> [Ainda não]

### Passo 4: Ramificação (Condicionais)

- **Se clicar em "Já sigo!":**
  > "Que maravilha, [Nome do Lead]! 🥰 Então você já sabe do padrão de qualidade que te espera. Qualquer dúvida antes da consulta, é só me chamar por aqui. Até breve!"
  - *Ação no Kommo:* Adicionar uma TAG `Segue_Insta` ao lead.

- **Se clicar em "Ainda não":**
  > "Ah, então você precisa conhecer! 😍 Clica nesse link aqui embaixo para conferir nossos últimos casos clínicos e já aproveita para seguir a gente. Tenho certeza que você vai adorar:
  > 👉 [Link direto para o Instagram da clínica]
  > 
  > Te esperamos aqui na clínica no dia da sua consulta!"
  - *Ação no Kommo:* Adicionar uma TAG `Nao_Segue_Insta` (opcional, para controle futuro).

- **Se não responder em 1 dia:**
  > (Fim da automação silencioso, não incomodar o paciente).

## 💡 Por que essa abordagem funciona?
1. **É conversacional:** Em vez de mandar um link "jogado", você engaja o paciente com uma pergunta.
2. **Qualifica os leads:** Você descobre quem já é aquecido pelo seu conteúdo social (TAG `Segue_Insta`) e quem ainda precisa de mais conscientização.
3. **Foco:** Não tira o foco principal que é o agendamento; só atua *depois* dessa etapa concluída.

---
## 🔗 Conexões Relacionadas
- [[Templates-Conteudo]]
- [[Roteiro-Fechamento-Avaliacao]]