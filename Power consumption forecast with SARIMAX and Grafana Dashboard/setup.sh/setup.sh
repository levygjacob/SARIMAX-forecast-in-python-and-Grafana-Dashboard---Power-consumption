#!/bin/bash

# setup
GRAFANA_URL="http://localhost:3000"
ADMIN_USER="admin"
ADMIN_PASS="admin"
DATASOURCE_NAME="MyDataSource"
DATASOURCE_TYPE="prometheus"  # Exemple: it may be .csv, influxdb, postgres, etc.
DATASOURCE_URL="http://localhost:9090"
DASHBOARD_JSON="dashboards/dashboard.json"

echo "Iniciando a configuração do Grafana..."

# Installing Grafana (if needed)
if ! command -v grafana-server &> /dev/null
then
    echo "Instalando Grafana..."
    sudo apt-get update
    sudo apt-get install -y grafana
    sudo systemctl enable --now grafana-server
    echo "Grafana instalado com sucesso!"
else
    echo "Grafana já está instalado."
fi

# Aguarda o Grafana iniciar
echo "Aguardando o Grafana iniciar..."
sleep 10

# Criar um DataSource no Grafana via API
echo "Configurando fonte de dados..."
curl -X POST "$GRAFANA_URL/api/datasources" \
     -H "Content-Type: application/json" \
     -u "$ADMIN_USER:$ADMIN_PASS" \
     -d '{
          "name": "'"$DATASOURCE_NAME"'",
          "type": "'"$DATASOURCE_TYPE"'",
          "access": "proxy",
          "url": "'"$DATASOURCE_URL"'",
          "isDefault": true
     }'

echo "Fonte de dados adicionada!"

# Importar um dashboard JSON
echo "Importando dashboard..."
curl -X POST "$GRAFANA_URL/api/dashboards/db" \
     -H "Content-Type: application/json" \
     -u "$ADMIN_USER:$ADMIN_PASS" \
     -d '{
          "dashboard": '$(cat "$DASHBOARD_JSON")',
          "overwrite": true,
          "folderId": 0
     }'

echo "Dashboard importado com sucesso!"
echo "Configuração concluída! Acesse: $GRAFANA_URL"
