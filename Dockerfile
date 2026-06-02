# ============================================================
# Stage 1 — Build: instala dependências, plugins e gera o site
# ============================================================
FROM node:22-slim AS builder
WORKDIR /usr/src/app

# Dependências do Node
COPY package.json package-lock.json* quartz.lock.json ./
COPY quartz/ ./quartz/
COPY quartz.config.yaml ./
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
