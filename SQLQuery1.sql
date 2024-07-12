CREATE DATABASE portfolio_db;
GO

USE portfolio_db;
GO

CREATE TABLE portfolio_tickers (
	ticker VARCHAR(255) PRIMARY KEY,
	[name] VARCHAR(255) NOT NULL,
	[type] VARCHAR(255) NOT NULL
)
GO

CREATE TABLE portfolio_aggregations (
	[date] DATETIME NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[annualized return] FLOAT NOT NULL,
	[volatility] FLOAT NOT NULL,
	[sharpe] FLOAT NOT NULL
)
GO

CREATE TABLE AMZN_stock_data (
	[date] DATETIME PRIMARY KEY,
	[open] MONEY NOT NULL,
	[high] MONEY NOT NULL,
	[low] MONEY NOT NULL,
	[close] MONEY NOT NULL,
	volume INTEGER NOT NULL,
	vwap MONEY NOT NULL,
	transactions INTEGER NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[volatility] FLOAT NOT NULL,
	[sharpe] FLOAT NOT NULL,
	[10 day avg] MONEY NOT NULL,
	[100 day avg] MONEY NOT NULL,
	beta FLOAT NOT NULL
)
GO

CREATE TABLE TSM_stock_data (
	[date] DATETIME PRIMARY KEY,
	[open] MONEY NOT NULL,
	[high] MONEY NOT NULL,
	[low] MONEY NOT NULL,
	[close] MONEY NOT NULL,
	volume INTEGER NOT NULL,
	vwap MONEY NOT NULL,
	transactions INTEGER NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[volatility] FLOAT NOT NULL,
	[sharpe] FLOAT NOT NULL,
	[10 day avg] MONEY NOT NULL,
	[100 day avg] MONEY NOT NULL,
	beta FLOAT NOT NULL
)
GO

CREATE TABLE NVDA_stock_data (
	[date] DATETIME PRIMARY KEY,
	[open] MONEY NOT NULL,
	[high] MONEY NOT NULL,
	[low] MONEY NOT NULL,
	[close] MONEY NOT NULL,
	volume INTEGER NOT NULL,
	vwap MONEY NOT NULL,
	transactions INTEGER NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[volatility] FLOAT NOT NULL,
	[sharpe] FLOAT NOT NULL,
	[10 day avg] MONEY NOT NULL,
	[100 day avg] MONEY NOT NULL,
	beta FLOAT NOT NULL
)
GO

CREATE TABLE CELH_stock_data (
	[date] DATETIME PRIMARY KEY,
	[open] MONEY NOT NULL,
	[high] MONEY NOT NULL,
	[low] MONEY NOT NULL,
	[close] MONEY NOT NULL,
	volume INTEGER NOT NULL,
	vwap MONEY NOT NULL,
	transactions INTEGER NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[volatility] FLOAT NOT NULL,
	[sharpe] FLOAT NOT NULL,
	[10 day avg] MONEY NOT NULL,
	[100 day avg] MONEY NOT NULL,
	beta FLOAT NOT NULL
)
GO

CREATE TABLE AXP_stock_data (
	[date] DATETIME PRIMARY KEY,
	[open] MONEY NOT NULL,
	[high] MONEY NOT NULL,
	[low] MONEY NOT NULL,
	[close] MONEY NOT NULL,
	volume INTEGER NOT NULL,
	vwap MONEY NOT NULL,
	transactions INTEGER NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[volatility] FLOAT NOT NULL,
	[sharpe] FLOAT NOT NULL,
	[10 day avg] MONEY NOT NULL,
	[100 day avg] MONEY NOT NULL,
	beta FLOAT NOT NULL
)
GO

CREATE TABLE SPY_ETF_data (
	[date] DATETIME PRIMARY KEY,
	[open] MONEY NOT NULL,
	[high] MONEY NOT NULL,
	[low] MONEY NOT NULL,
	[close] MONEY NOT NULL,
	volume INTEGER NOT NULL,
	vwap MONEY NOT NULL,
	transactions INTEGER NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[volatility] FLOAT NOT NULL,
	[sharpe] FLOAT NOT NULL,
	[10 day avg] MONEY NOT NULL,
	[100 day avg] MONEY NOT NULL,
	beta FLOAT NOT NULL
)
GO

CREATE TABLE USDJPY_FOREX_data (
	[date] DATETIME PRIMARY KEY,
	[open] MONEY NOT NULL,
	[high] MONEY NOT NULL,
	[low] MONEY NOT NULL,
	[close] MONEY NOT NULL,
	volume INTEGER NOT NULL,
	vwap MONEY NOT NULL,
	transactions INTEGER NOT NULL,
	[value] MONEY NOT NULL,
	[cumulative return] FLOAT NOT NULL,
	[percent change] FLOAT NOT NULL,
)
GO



BULK INSERT dbo.portfolio_tickers FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\portfolio_tickers.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)
BULK INSERT dbo.portfolio_aggregations FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\portfolio_aggs.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)
BULK INSERT dbo.AMZN_stock_data FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\AMZN_stock_data.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)
BULK INSERT dbo.TSM_stock_data FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\TSM_stock_data.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)
BULK INSERT dbo.NVDA_stock_data FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\NVDA_stock_data.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)
BULK INSERT dbo.CELH_stock_data FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\CELH_stock_data.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)
BULK INSERT dbo.AXP_stock_data FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\AXP_stock_data.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)
BULK INSERT dbo.USDJPY_forex_data FROM 'C:\Users\sxie0\Documents\SkillStorm\SkillStorm-Project-1\USDJPY_forex_data.csv' WITH (FORMAT='CSV', ROWTERMINATOR = '0x0a', FIELDTERMINATOR = ',', FIRSTROW=2)


SELECT * FROM portfolio_aggregations
