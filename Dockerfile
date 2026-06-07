# ============================================================
# Stage 1 — Build: instala dependências, plugins e gera o site
# ============================================================
FROM node:22-slim AS builder
WORKDIR /usr/src/app

# git e ca-certificates são necessários para o "quartz plugin install"
# clonar os repositórios dos ~43 plugins via HTTPS — a imagem -slim não
# vem com git, o que fazia todos os clones falharem silenciosamente.
RUN apt-get update && \
    apt-get install -y --no-install-recommends git ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Dependências do Node
COPY package.json package-lock.json* quartz.lock.json ./
COPY quartz/ ./quartz/
# quartz.ts é importado por quartz/build.ts como "../quartz" — sem ele o
# build falha com "Could not resolve '../quartz'". tsconfig.json define
# o JSX do Preact (essencial pros componentes .tsx) e os .d.ts trazem
# os tipos globais usados pelo build.
COPY quartz.config.yaml quartz.ts tsconfig.json globals.d.ts index.d.ts ./
RUN npm ci --ignore-scripts

# Instala plugins do Quartz e gera .quartz/plugins/index.ts
RUN npx quartz plugin install

# Copia conteúdo e assets
COPY content/ ./content/
COPY static/  ./static/

# Gera o site estático na pasta public/
RUN npx quartz build -d content

# ============================================================
# Stage 2 — Produção: nginx servindo os arquivos estáticos
# ============================================================
FROM nginx:alpine
COPY --from=builder /usr/src/app/public /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
