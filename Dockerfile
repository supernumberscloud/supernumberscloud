FROM node:22.12.0-slim as base
WORKDIR /usr/src/app

RUN npm install -g pnpm

FROM base AS install
RUN mkdir -p /temp/dev
COPY package.json pnpm-lock.yaml /temp/dev/
RUN cd /temp/dev && pnpm install --frozen-lockfile

RUN mkdir -p /temp/prod
COPY package.json pnpm-lock.yaml /temp/prod/
RUN cd /temp/prod && pnpm install --frozen-lockfile --production

FROM base AS prerelease
COPY --from=install /temp/dev/node_modules node_modules
COPY . .

ENV NODE_ENV=production
RUN pnpm run build

FROM nginxinc/nginx-unprivileged:1.26.2-alpine AS release
COPY --from=prerelease --chown=nginx:nginx /usr/src/app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/ # [!code ++]
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]