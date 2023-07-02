unit MD_conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Data.FMTBcd, Data.DBXInterBase, Data.SqlExpr,
  RBuilder.RestClient, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppPrnabl, Datasnap.DBClient, ppBands, ppCache,
  ppDesignLayer, ppParameter, raCodMod, ppModule, ppVar;

type
  TDM_conexao = class(TDataModule)
    FDConnection: TFDConnection;
    Qry_pessoa: TFDQuery;
    Ds_pessoa: TDataSource;
    Qry_pessoaCOD_PESSOA: TIntegerField;
    Qry_pessoaNOME_PESSOA: TStringField;
    Qry_pessoaCPF_CNPJ_PESSOA: TStringField;
    Qry_pessoaDAT_PESSOA: TDateField;
    Qry_pessoaEND_PESSOA: TStringField;
    Qry_pessoaBAIRRO_PESSOA: TStringField;
    Qry_pessoaCID_PESSOA: TStringField;
    Qry_pessoaEST_PESSOA: TStringField;
    Qry_pessoaCEP_PESSOA: TStringField;
    Qry_pessoaTEL_PESSOA: TStringField;
    Qry_pessoaEMAIL_PESSOA: TStringField;
    Qry_pessoaOBS_PESSOA: TStringField;
    Qry_pessoaSIT_PESSOA: TIntegerField;
    FDTransaction: TFDTransaction;
    QRY_codigo: TFDQuery;
    QRY_validador: TFDQuery;
    Ds_relatorio: TDataSource;
    ppDB_relatorio: TppDBPipeline;
    QRY_relatorio: TFDQuery;
    QRY_relatorioCOD_PESSOA: TIntegerField;
    QRY_relatorioNOME_PESSOA: TStringField;
    QRY_relatorioCPF_CNPJ_PESSOA: TStringField;
    QRY_relatorioDAT_PESSOA: TDateField;
    QRY_relatorioEND_PESSOA: TStringField;
    QRY_relatorioBAIRRO_PESSOA: TStringField;
    QRY_relatorioCID_PESSOA: TStringField;
    QRY_relatorioEST_PESSOA: TStringField;
    QRY_relatorioCEP_PESSOA: TStringField;
    QRY_relatorioTEL_PESSOA: TStringField;
    QRY_relatorioEMAIL_PESSOA: TStringField;
    QRY_relatorioOBS_PESSOA: TStringField;
    QRY_relatorioSIT_PESSOA: TIntegerField;
    ppReport: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    raCodeModule1: TraCodeModule;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel5: TppLabel;
    ppLabel4: TppLabel;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_conexao: TDM_conexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
