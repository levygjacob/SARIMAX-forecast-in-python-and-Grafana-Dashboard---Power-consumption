README

Análise e previsão de consumo de energia // Energy Consumption Analysis & Forecasting

-- Sobre o Projeto

	- Este projeto tem como objetivo analisar dados históricos de consumo de energia, construir um modelo preditivo para estimar o consumo futuro e visualizar os resultados utilizando o Grafana. O dataset inicial foi obtido no Kaggle e possui dados de consumo de energia de janeiro de 1985 a janeiro de 2018.

	- This project aims to analyze energy consumption data, build a forecasting model, and visualize insights using Grafana. The dataset, obtained from Kaggle, contains monthly energy consumption records from January 1985 to January 2018.

-- Etapas e Implementação // Steps and Implementations

	- Análise Exploratória de Dados (EDA) // Exploratory Data Analysis (EDA);

	- Análises estatísticas e identificação de padrões // Statistical analysis and identifying patterns;

	- Visualização inicial do consumo de energia ao longo do tempo // Generate descriptive statistics and visualizations;

	- Construção de um modelo SARIMAX para prever o consumo de energia até 2024 // Developed a SARIMAX (Seasonal Autoregressive Integrated Moving Average with Exogenous Variables) model to estimate energy consumption until 2024.

	
-- Visualização no Grafana // Grafana Dashboard

	- Construção de um dashboard no Grafana contendo:

		- Gráfico de série temporal: Consumo estimado, consolidado e previsão até 2024 // Time Series Graph: Shows estimated consumption, actual consumption, and forecast until 2024;

		- Histograma de Frequência de consumo de energia (previsto e consolidado) // Frequency Histogram: Displays the distribution of predicted and actual energy consumption;

		- Gráfico de barras: Consumo de energia por ano // Annual Energy Consumption (Bar Chart): Compares energy usage per year;
	
		- Gráfico de consumo por estação: Analisando padrões sazonais // Seasonal Energy Consumption (Bar Chart): Shows energy consumption by season;

		- Gráfico de consumo por mês: Comparação do consumo médio entre os meses // Monthly Energy Consumption (Bar Chart): Breaks down consumption per month.

-- Simulação de Logs para Monitoramento // Log Simulation for Monitoring

	- Geração de um dataset de logs fictícios simulando registros de sensores de consumo energético para Uso dos logs para praticar monitoramento no Grafana.
	- A synthetic log dataset was created, simulating data from an energy consumption sensor pipeline to practice log monitoring in Grafana.


--  Configurar o Grafana // Seting Grafana up

	- Para configurar o Grafana automaticamente, execute: // to automaticaly setup Grafana, execute:

		- chmod +x setup.sh
		- ./setup.sh

	- Caso prefira configurar manualmente, adicione o dashboard JSON da pasta dashboards/ no Grafana // In case you prefer manualy setup, add the JSON dashboard file to Grafana's dashboards/ folder.
 # SARIMAX-forecast-in-python-and-Grafana-Dashboard---Power-consumption
