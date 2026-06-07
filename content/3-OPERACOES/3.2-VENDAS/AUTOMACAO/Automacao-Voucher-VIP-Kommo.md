---
status: ⚙️ Configuração
categoria: CRM
sistema: Kommo
data: 2026-05-05
tags: [crm, kommo, automacao, voucher, indicacao, pos-venda]
---

# 🎟️ Automação Kommo: Voucher VIP de Indicação

Esta automação integra a estratégia do **Voucher VIP de Indicação** diretamente no funil de vendas/atendimento do Kommo CRM. O objetivo é automatizar o envio sem perder a personalização e o sentimento de "paciente especial".

## 📍 Etapas Ideais no Funil (Gatilhos)

Para que o gatilho da escassez e da exclusividade funcione, a automação **não pode** ser disparada para qualquer lead. Ela deve ocorrer no pico de endorfina e satisfação do paciente. 

Recomendamos criar uma das seguintes etapas no seu funil de "Pós-Venda" ou "Atendimento" no Kommo:

1. **Opção A: Etapa "Tratamento Finalizado / Alta Odontológica" (Mais Simples)**
   - **Quando mover:** A secretária move o card do paciente para esta etapa logo após a última consulta, quando ele se despede e o sorriso está entregue.
   - **Gatilho:** O bot dispara a mensagem do Voucher 24 horas após o lead entrar nesta etapa. (O delay de 24h faz parecer um agradecimento genuíno, e não uma mensagem automática de sistema).

2. **Opção B: Etapa "Pesquisa de Satisfação (NPS) - Nota 9 ou 10" (Avançado/Ideal)**
   - **Como funciona:** Quando o tratamento acaba, o bot primeiro pergunta como foi a experiência (NPS de 1 a 10).
   - **Gatilho:** Se o paciente responder 9 ou 10, o Salesbot move ele automaticamente para a etapa "Pacientes Promotores" e dispara o Voucher VIP imediatamente, aproveitando que ele acabou de elogiar a clínica.

---

## ⚙️ Estrutura da Automação (Salesbot)

Para configurar no Kommo usando a **Opção A (Alta Odontológica com Delay de 24h)**:

### Passo 1: Gatilho
- **Condição:** Quando o lead for movido para a etapa `Tratamento Finalizado`.

### Passo 2: O Delay de Humanização
- Adicione um bloco de **Time Delay (Pausa)** de `1 dia (24 horas)`. (Isso garante que ele já foi para casa e já recebeu elogios pelo novo sorriso).

### Passo 3: Envio da Mensagem Principal + Arte do Voucher
- Adicione um bloco de **Enviar Mensagem (WhatsApp)**.
- **Texto:** 
  > "Olá, [Nome do Lead]! Tudo bem? Aqui é a equipe da Dra. Patrícia Nogueira.
  > 
  > Estamos passando para dizer que adoramos acompanhar a sua transformação! O resultado ficou simplesmente incrível. ✨
  > 
  > Como forma de celebrar essa finalização, a Dra. Patrícia liberou algo muito especial que fazemos apenas para um grupo muito seleto de pacientes. Nós geramos um **Voucher VIP de Indicação** no seu nome. Com ele, você tem o poder de presentear **apenas 3 pessoas** da sua família ou amigos próximos.
  > 
  > (Veja a imagem abaixo com o seu convite oficial!)"
- **Anexo:** Adicione a imagem em PDF/JPG do Voucher VIP no próprio bloco da mensagem.

### Passo 4: O Reforço da Escassez e Facilitador
- Adicione um novo bloco de **Time Delay (Pausa)** curto, de `1 minuto` (simulando que a secretária está digitando a continuação).
- Adicione um bloco de **Enviar Mensagem (WhatsApp)** com a explicação final e o texto facilitador:
  > "Lembrando que quem você escolher e nos apresentar esse voucher, vai ganhar uma **Avaliação Clínica VIP + [Bônus]**.
  > 
  > ⚠️ Mas atenção: esses 3 convites são super exclusivos e a validade deles no nosso sistema é de apenas **7 dias**, ok?
  > 
  > Para facilitar, vou deixar aqui embaixo um textinho pronto. Você pode só copiar e mandar junto com a imagem do voucher para essas 3 pessoas especiais:"
  > 
  > *(Mandar na mesma mensagem ou em uma bolha logo abaixo:)*
  > "Amiga(o), acabei de finalizar meu tratamento com a Dra. Patrícia Nogueira e ganhei 3 Vouchers VIPs super exclusivos para presentear pessoas especiais. Lembrei de você na hora! Com esse convite você ganha uma Avaliação VIP lá na clínica dela. Eles são maravilhosos. Manda mensagem nesse número aqui [Seu Número] falando que é minha convidada e manda a foto do voucher. Mas corre que só vale por 7 dias!"

### Passo 5: Fim da Automação e Notificação Interna
- Adicione uma **Ação Interna** (Notificação/Tarefa) para a Secretária:
  - **Texto da Tarefa:** `"Voucher VIP enviado para [Nome do Lead]. Fique atenta ao recebimento de novos contatos informando o nome deste paciente nos próximos 7 dias."`

---

## 🎯 Dica de Ouro de Gestão
Quando o novo paciente indicado entrar em contato pelo WhatsApp, ele deve ser cadastrado no Kommo com a origem (Source) como "Indicação" e, no campo de notas, colocar "Indicado pelo Voucher de: [Nome do Paciente Origem]". Isso ajudará a medir o ROI da campanha de vouchers.

---
## 🔗 Conexões Relacionadas
- [[Script-Voucher-Indicacao]]
- [[Automacao-Instagram-Kommo]]