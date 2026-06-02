#!/bin/bash
# ============================================================
# sync-vault.sh — Sincroniza o vault Obsidian para content/
# Uso: ./sync-vault.sh
# ============================================================

VAULT="/Users/brayan/Library/CloudStorage/OneDrive-Pessoal/OBSIDIAN/DRA-PATRICIA"
CONTENT="./content"

echo "🔄 Sincronizando vault para content/..."

# Limpa o conteúdo anterior
rm -rf "$CONTENT"
mkdir -p "$CONTENT"

# Copia arquivos .md ignorando pastas e arquivos sensíveis
rsync -av --progress \
  --include="*/" \
  --include="*.md" \
  --exclude="GEMINI.md" \
  --exclude="CONFIG-PATRICIA.md" \
  --exclude="MEMORY.md" \
  --exclude="Concorrentes.md" \
  --exclude="*.canvas" \
  --exclude="*.excalidraw" \
  --exclude="*.html" \
  --exclude="*.py" \
  --exclude="*.pdf" \
  --exclude="*.jpeg" \
  --exclude="*.jpg" \
  --exclude="*.png" \
  --exclude="*.JPG" \
  --exclude=".obsidian/" \
  --exclude=".trash/" \
  --exclude=".git/" \
  --exclude="CURSO-MENTORIA/" \
  --exclude="*" \
  "$VAULT/" "$CONTENT/"

echo ""
echo "✅ Sincronização concluída!"
echo ""

# Mostra resumo
TOTAL=$(find "$CONTENT" -name "*.md" | wc -l | tr -d ' ')
echo "📄 Total de arquivos .md: $TOTAL"
echo ""

# Pergunta se quer fazer commit e push
read -p "🚀 Fazer commit e push para o GitHub? (s/N) " CONFIRMA
if [[ "$CONFIRMA" =~ ^[Ss]$ ]]; then
  git add content/
  git commit -m "chore: atualiza conteúdo do vault — $(date '+%d/%m/%Y %H:%M')"
  git push
  echo ""
  echo "✅ Push realizado! EasyPanel irá fazer deploy automaticamente."
else
  echo "⏸️  Push cancelado. Rode 'git push' quando quiser publicar."
fi
