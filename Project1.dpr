program Project1;

uses
  Vcl.Forms,
  Frm_principal in 'Frm_principal.pas' {Frm_Pessoa},
  MD_conexao in 'MD_conexao.pas' {DM_conexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Pessoa, Frm_Pessoa);
  Application.CreateForm(TDM_conexao, DM_conexao);
  Application.Run;
end.
