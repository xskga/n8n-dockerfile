FROM n8nio/n8n:latest

USER root

RUN npm install -g @mathieuc/tradingview

# RUN npm install -g other-package

ENV NODE_FUNCTION_ALLOW_BUILTIN="*" \
    NODE_FUNCTION_ALLOW_EXTERNAL="@mathieuc/tradingview" \
    N8N_REINSTALL_MISSING_PACKAGES="true" \
    GENERIC_TIMEZONE="Europe/Warsaw"

USER node

WORKDIR /home/node/.n8n

EXPOSE 5678