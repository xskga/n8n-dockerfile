FROM n8nio/n8n:latest
USER root
RUN npm install -g @mathieuc/tradingview
USER node
WORKDIR /home/node/.n8n
ENV GENERIC_TIMEZONE=Europe/Warsaw
EXPOSE 5678