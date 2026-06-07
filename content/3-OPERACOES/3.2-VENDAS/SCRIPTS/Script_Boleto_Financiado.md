---
status: ativo
categoria: vendas
data: 2026-05-22
tags: [script, reativacao, boleto, vendas, follow-up]
---

# Script de Reativação — Boleto Financiado

> [!INFO] Objetivo
> Resgatar leads que demonstraram interesse em um procedimento (ex: Lipo de Papada, Reabilitação, etc.), mas não fecharam o tratamento, possivelmente por questões financeiras.
> **Público-alvo:** Orçamentos inativos ou não convertidos nos últimos 3 a 6 meses.

## 📝 O Script (WhatsApp)

**Variáveis necessárias:**
- `[Nome do Lead]`: Nome do paciente/lead.
- `[Procedimento]`: Procedimento que o lead demonstrou interesse (ex: Lipo de Papada, Harmonização Facial).

> [!TIP] Script de Reativação (Versão Padrão)
> Olá, `[Nome do Lead]`, tudo bem? Aqui é da equipe da Dra. Patricia Nogueira! 😊
> 
> Estávamos revisando nossos contatos e lembramos que há um tempo você demonstrou interesse no procedimento de `[Procedimento]`. 
>
> Passando para te dar uma excelente notícia: nós conseguimos liberar uma **nova condição de pagamento super facilitada** para os nossos pacientes. Agora é possível realizar o `[Procedimento]` **sem entrada** e com **parcelamento no boleto** (com uma taxa bem reduzida).
> 
> Como sei que era um desejo seu, fiz questão de te avisar em primeira mão. Você teria interesse em que eu fizesse uma simulação rápida sem compromisso para você ver como ficaria?

> [!TIP] Variação 1 (Direta e Focada no Benefício)
> Olá `[Nome do Lead]`, tudo bem? Aqui é da equipe da Dra. Patricia Nogueira! 😊
> Lembrei que você tinha interesse em fazer `[Procedimento]`. Conseguimos uma condição especial: **sem entrada e parcelado no boleto** (com taxa bem reduzida).
> Quer que eu faça uma simulação rápida e sem compromisso para você ver como fica?

> [!TIP] Variação 2 (Casual e Curta)
> Oi `[Nome do Lead]`, tudo bem? Equipe da Dra. Patricia por aqui.
> Ainda pensando em fazer seu `[Procedimento]`? Liberamos hoje uma forma de pagamento super flexível: parcelamento no boleto, sem precisar dar entrada.
> Posso te enviar uma simulação de como ficariam as parcelas?

> [!TIP] Variação 3 (Direta com Gatilho de Escassez)
> Olá `[Nome do Lead]`, tudo joia? 😊
> Conseguimos liberar algumas vagas com pagamento facilitado no boleto e sem entrada para o `[Procedimento]`. Lembrei de você na hora!
> Tem interesse em ver uma simulação sem compromisso?

---

## ⚙️ Próximos Passos (Workflow)

1. **Se o paciente disser SIM:**
   - Explique que o parcelamento é feito através de uma **instituição financeira parceira** e está sujeito à análise de crédito.
   - Faça a simulação de acordo com o valor atualizado do procedimento.
   - Solicite os dados necessários para realizar a pré-aprovação de crédito junto à operadora.
   - Pergunte: *"O que achou dessa condição, `[Nome do Lead]`? Fica confortável para você? Posso rodar a sua análise de crédito sem compromisso?"*
   - Caso necessário, agende uma reavaliação se o tempo desde o último contato for muito longo.

2. **Se o paciente não responder em 24h:**
   - Envie uma mensagem curta de follow-up: *"Oi `[Nome do Lead]`, conseguiu ver a mensagem acima? Apenas confirmando pois as vagas para essa condição de boleto são limitadas neste mês. Qualquer dúvida, estou por aqui!"*

3. **Se o paciente disser NÃO:**
   - Agradeça e mantenha as portas abertas: *"Sem problemas, `[Nome do Lead]`! Estaremos sempre à disposição quando for o momento ideal para você. Tenha uma ótima semana!"*
   - Atualize o status do lead no controle de vendas.

## 🔗 Links Úteis
- [[SCRIPTS-PROSPECCAO-ATIVA]]
- [[FUNIL-VENDAS]]
