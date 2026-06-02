# 📋 PROJETO — Wiki Clínica Dra. Patrícia

> Base de conhecimento online gerada a partir do vault Obsidian, usando Quartz v5.
> Última atualização: 2026-06-02

---

## 📁 Localização

| Item | Caminho |
|------|---------|
| **Projeto (Quartz)** | `/Users/brayan/Documents/PROJETOS/dra-patricia/` |
| **Vault Obsidian** | `/Users/brayan/Library/CloudStorage/OneDrive-Pessoal/OBSIDIAN/DRA-PATRICIA/` |
| **Config principal** | `quartz.config.yaml` |
| **Robots (SEO off)** | `static/robots.txt` |
| **Script auxiliar** | `generate-index.mjs` |
| **Output do build** | `public/` |

---

## 🔗 Repositório GitHub

- **URL:** https://github.com/brayan-mesquita/dra-patricia
- **Visibilidade:** Privado
- **Branch principal:** `master`

---

## 🖥️ Rodar Localmente

### Pré-requisito
Node.js 22 via NVM (instalado em `~/.nvm/versions/node/v22.22.3`)

### Comandos

```bash
# 1. Ativar Node 22
source ~/.nvm/nvm.sh && nvm use 22

# 2. Entrar no projeto
cd /Users/brayan/Documents/PROJETOS/dra-patricia

# 3. Visualizar com live reload
npx quartz build --serve \
  -d "/Users/brayan/Library/CloudStorage/OneDrive-Pessoal/OBSIDIAN/DRA-PATRICIA" \
  --port 8181
```

**Acesso local:** http://localhost:8181

### Quando precisar rodar após mudar plugins ou config

```bash
# Gerar index dos plugins antes de buildar
node generate-index.mjs

# Depois buildar normalmente
npx quartz build --serve -d "/caminho/vault" --port 8181
```

> ⚠️ O `generate-index.mjs` só é necessário se adicionar/remover plugins.
> Para mudanças de conteúdo (arquivos .md), basta o build normal.

---

## ⚙️ Configuração Atual (`quartz.config.yaml`)

| Parâmetro | Valor |
|-----------|-------|
| `pageTitle` | Clínica Dra. Patrícia |
| `pageTitleSuffix` | · Base de Conhecimento |
| `locale` | pt-BR |
| `baseUrl` | localhost:8080 *(mudar para domínio em produção)* |
| `analytics` | null (desabilitado) |
| `enableSPA` | true |
| `enablePopovers` | true |

### 🎨 Paleta de Cores (Roxo — Cor da Empresa)

| Variável | Light Mode | Dark Mode |
|----------|-----------|-----------|
| Fundo (`light`) | `#faf8ff` | `#160d2e` |
| Bordas (`lightgray`) | `#e8e0f5` | `#2a1a4a` |
| Links/Destaque (`secondary`) | `#7c3aed` | `#c084fc` |
| Hover (`tertiary`) | `#a855f7` | `#a855f7` |
| Texto principal (`darkgray`) | `#2d1f45` | `#d8c8f0` |
| Títulos (`dark`) | `#140a2e` | `#f0eaff` |

### 📝 Fontes
| Uso | Fonte |
|-----|-------|
| Títulos | Schibsted Grotesk (Google Fonts) |
| Corpo | Source Sans Pro (Google Fonts) |
| Código | IBM Plex Mono (Google Fonts) |

---

## 🚫 Arquivos Ignorados (não publicados)

```yaml
ignorePatterns:
  - .obsidian        # Config interna do Obsidian
  - .trash           # Lixeira do Obsidian
  - .git             # Git
  - GEMINI.md        # Prompt de IA
  - CONFIG-PATRICIA.md
  - MEMORY.md
  - Concorrentes.md  # Dado sensível
  - "*.canvas"       # Canvas do Obsidian
  - "*.excalidraw"   # Desenhos Excalidraw
  - CURSO-MENTORIA   # Conteúdo do curso (pasta inteira)
  - private          # Padrão Quartz
  - templates        # Padrão Quartz
```

> Para ocultar qualquer arquivo individualmente, adicione `draft: true`
> no frontmatter do arquivo `.md`.

---

## 🔌 Plugins Ativos

| Plugin | Função |
|--------|--------|
| `obsidian-flavored-markdown` | Wikilinks `[[]]`, callouts, checkboxes |
| `github-flavored-markdown` | Tabelas, strikethrough |
| `graph` | Grafo de conexões (barra lateral direita) |
| `backlinks` | Quem linka para esta página |
| `explorer` | Árvore de arquivos (barra lateral esquerda) |
| `search` | Busca full-text |
| `table-of-contents` | Índice automático por página |
| `breadcrumbs` | Navegação hierárquica |
| `darkmode` | Alternância claro/escuro |
| `mermaid` (via GFM) | Diagramas e fluxogramas |
| `encrypted-pages` | Proteção de páginas com senha |
| `crawl-links` | Resolução de links no estilo Obsidian (shortest) |
| `created-modified-date` | Data de criação/modificação via frontmatter ou git |

### Plugins Instalados mas Desabilitados
`citations`, `comments`, `explicit-publish`, `hard-line-breaks`,
`ox-hugo`, `roam`, `stacked-pages`, `tag-list`, `recent-notes`

---

## 🔐 SEO / Indexação

| Recurso | Status |
|---------|--------|
| `robots.txt` | `Disallow: /` (bloqueia todos os bots) |
| Sitemap | Desabilitado |
| RSS Feed | Desabilitado |
| Google Analytics | Desabilitado |

> O site só é acessível por **link direto**. Não aparece em nenhum buscador.

---

## 📦 Estrutura do Projeto

```
dra-patricia/
├── quartz.config.yaml      ← Configuração principal
├── quartz.lock.json        ← Lock de versões dos plugins
├── generate-index.mjs      ← Script auxiliar (usar após mudar plugins)
├── static/
│   └── robots.txt          ← Bloqueia indexação
├── public/                 ← Site gerado (não vai pro Git)
├── node_modules/           ← Dependências (não vai pro Git)
├── .quartz/
│   └── plugins/            ← Plugins instalados + index.ts gerado
└── quartz/                 ← Core do Quartz (não editar)
```

---

## 🚀 Deploy no EasyPanel

### Checklist de Configuração
- [x] `Dockerfile` criado (multi-stage: Node build + nginx serve)
- [x] `nginx.conf` com `try_files` (resolve pastas com ponto no nome)
- [x] `.github/workflows/deploy.yml` criado
- [x] `.dockerignore` criado
- [ ] **Configurar Deploy Hook no EasyPanel** (ver abaixo)
- [ ] **Atualizar `baseUrl`** no `quartz.config.yaml` para o domínio real
- [ ] Configurar domínio personalizado no EasyPanel

### Como Configurar o Auto-Deploy

**1. No EasyPanel:**
- Abra o app → `Settings` → `Deploy Hook`
- Copie a URL gerada (ex: `https://easypanel.seudominio.com/api/deploy/xxx`)

**2. No GitHub (secrets):**
- Repositório → `Settings` → `Secrets and variables` → `Actions`
- Crie: `EASYPANEL_DEPLOY_HOOK` = URL copiada acima

**3. No EasyPanel — apontar para o repo:**
- Source: GitHub → `brayan-mesquita/dra-patricia`
- Branch: `master`
- Build method: `Dockerfile`

### Fluxo Completo de Publicação

```
Editar arquivos .md no Obsidian
        ↓
./sync-vault.sh    ← script local
        ↓
Confirma → git commit + push → GitHub
        ↓
GitHub Actions chama webhook EasyPanel
        ↓
EasyPanel: docker build → nginx serve
        ↓
Site atualizado em produção ✅
```

### Antes do Primeiro Deploy
Atualizar `baseUrl` no `quartz.config.yaml`:
```yaml
baseUrl: wiki.suaclinica.com.br   # ← substituir pelo domínio real
```

---

## 🔧 Ajustes Rápidos Úteis

### Trocar fonte
```yaml
# em quartz.config.yaml → theme.typography
header: "Playfair Display"   # qualquer Google Font
body: "Inter"
```

### Adicionar logo/favicon
```
static/
├── favicon.ico       ← ícone do browser
└── og-image.png      ← imagem para compartilhamento social
```

### Proteger uma página com senha
```yaml
# No frontmatter do arquivo .md
---
password: minhasenha123
---
```

### Ocultar uma página do site
```yaml
# No frontmatter do arquivo .md
---
draft: true
---
```

### Ativar Stacked Pages (visual estilo Roam)
```yaml
# em quartz.config.yaml
- source: github:quartz-community/stacked-pages
  enabled: true   ← mudar de false para true
```

---

## 📞 Contatos do Projeto

| Papel | Info |
|-------|------|
| Conta GitHub | `brayan-mesquita` |
| Vault OneDrive | Sincronizado automaticamente |
| Node.js necessário | `>= 22` (via NVM) |
