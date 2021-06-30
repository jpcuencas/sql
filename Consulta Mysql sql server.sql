--buscador_estadisticas_google_analitics
CREATE PROCEDURE dbo.buscador_estadisticas_google_analitics
AS
BEGIN 
  SET NOCOUNT ON; 
  DECLARE @SQLCREATE NVARCHAR(MAX); 
  DECLARE @SQLINSERT NVARCHAR(MAX);
  BEGIN TRY  

	EXEC('truncate table DestinationTable') AT MsSQL ;

	INSERT OPENQUERY (MsSQL , 'SELECT firstField, secondField, thirdField FROM DestinationTable')
	SELECT firstField, secondField, thirdField FROM [LocalDb].dbo.fnLocalTable()

	create table #SALESTABLE (PRODID int, ORDYEAR char(4), ORDMONTH char(3), QTY smallint, AMOUNT decimal(9,2))
insert into #SALESTABLE
	select * from OPENQUERY(LINKSVR,'SELECT * FROM SALES')
select * from #SALESTABLE
drop table #SALESTABLE


	END TRY  
	BEGIN CATCH
		DECLARE @v_PROCESO_ERR varchar(500)
		DECLARE @v_COD_PROV varchar(100)
		DECLARE @v_COD_ERROR decimal(10,0)
		DECLARE @v_NIVEL decimal(10,2)
		DECLARE @v_DESC_ERR varchar(4000)
		DECLARE @v_LINEA int
		DECLARE @v_FECHA_ERROR datetime
		DECLARE @v_OBSERVACIONES varchar(4000)

		SET @v_PROCESO_ERR= ERROR_PROCEDURE()
		SET @v_COD_PROV=null
		SET @v_COD_ERROR=ERROR_NUMBER()
		SET @v_DESC_ERR=ERROR_MESSAGE()
		SET @v_NIVEL=ERROR_LINE()
		SET @v_FECHA_ERROR=GETDATE()
		SET @v_OBSERVACIONES='buscador_estadisticas_google_analitics Error'
		
		--TODO MANEJAR LOS ERRORES
		PRINT N'Line: ' + @v_NIVEL + 'COD ERROR:' + @v_COD_ERROR + 'ERROR: '+ @v_PROCESO_ERR +
		'Fecha: ' + @v_FECHA_ERROR + 'Observaciones: ' + @v_OBSERVACIONES;  
	END CATCH;
END
GO

CREATE TRIGGER items_insert ON [dbo.items]
FOR INSERT
AS SET XACT_ABORT ON
INSERT INTO OPENQUERY(WEBDB, 'SELECT * FROM items')
SELECT IDkolom, naam, leeftijd FROM INSERTED

GO

CREATE TRIGGER items_update ON [dbo].[items]
FOR UPDATE
AS
SET XACT_ABORT ON
DELETE FROM OPENQUERY(WEBDB, 'SELECT * FROM items')
WHERE IDkolom IN (SELECT IDkolom FROM DELETED)
INSERT INTO OPENQUERY(WEBDB, 'SELECT * FROM items')
SELECT IDkolom, naam, leeftijd FROM INSERTED

GO

CREATE TRIGGER items_delete ON [dbo].[items]
FOR DELETE
AS
SET XACT_ABORT ON
DELETE FROM OPENQUERY(WEBDB, 'SELECT * FROM items')
WHERE IDkolom IN (SELECT IDkolom FROM DELETED)

GO