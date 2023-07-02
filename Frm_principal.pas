unit Frm_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, MD_conexao, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.AppAnalytics, ppArchiv, ppBands, ppCache, ppClass, ppDesignLayer,
  ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppPrnabl, ppTypes;

type
  TFrm_Pessoa = class(TForm)
    P_botao: TPanel;
    btn_excluir: TButton;
    P_principal: TPanel;
    DBG_Pessoa: TDBGrid;
    Lb_cod: TLabel;
    Ed_cod: TEdit;
    Ed_nome: TEdit;
    Lb_nome: TLabel;
    cb_status: TComboBox;
    Lb_CPF_CNPJ: TLabel;
    Lb_situacao: TLabel;
    Ed_end: TEdit;
    Ed_bairro: TEdit;
    Ed_cep: TMaskEdit;
    Ed_tel: TMaskEdit;
    Lb_endereco: TLabel;
    Lb_bairro: TLabel;
    Lb_cep: TLabel;
    Lb_telefone: TLabel;
    Ed_cid: TEdit;
    Ed_est: TEdit;
    Ed_mail: TEdit;
    Date_data: TDateTimePicker;
    Lb_cidade: TLabel;
    Lb_estado: TLabel;
    Lb_email: TLabel;
    Lb_data: TLabel;
    Obs_pessoa: TMemo;
    Lb_obs: TLabel;
    Ed_cpf: TMaskEdit;
    P_novo: TPanel;
    btn_novo: TSpeedButton;
    P_salvar: TPanel;
    btn_salva: TSpeedButton;
    P_cpf_cnpj: TPanel;
    RB_CPF: TRadioButton;
    RB_CNPJ: TRadioButton;
    Lb_radion_CPF_CNPJ: TLabel;
    P_excluir: TPanel;
    Cb_buscar: TComboBox;
    btn_buscar: TButton;
    Lb_relatorio: TLabel;
    Label18: TLabel;
    P_titulo: TPanel;
    Label1: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    P_consulta: TPanel;
    Lb_consulta: TLabel;
    Ed_busca: TEdit;
    procedure DBG_PessoaCellClick(Column: TColumn);
    procedure Ed_buscaChange(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure btn_salvaClick(Sender: TObject);
    procedure Ed_cpfChange(Sender: TObject);
    function id_pessoa (GENERATOR: string):integer;
    function btnsalvar():integer;
    function btneditar():integer;
    function iniciaEdicao():integer;
    procedure DBG_PessoaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function chamaRelatorio(box_buscar:integer): integer;
    procedure btn_buscarClick(Sender: TObject);
  private
    { Private declarations }

    procedure btnNovo;

  public
    { Public declarations }
    box_buscar:integer;
  end;

var
  Frm_Pessoa: TFrm_Pessoa;

implementation

{$R *.dfm}

procedure TFrm_Pessoa.btnNovo;
begin
var i : integer;
 begin
    for i := Frm_Pessoa.ComponentCount -1 downto 0 do
      begin
        if (Frm_Pessoa.Components[i] is TEdit) then
          (Frm_Pessoa.Components[i] as TEdit).Clear;
        if (Frm_Pessoa.Components[i] is TMemo) then
          (Frm_Pessoa.Components[i] as TMemo).Lines.Clear;
        if(Frm_Pessoa.Components[i] is TMaskEdit) then
          (Frm_Pessoa.Components[i] as TMaskEdit).Clear;
      end;
      DM_conexao.Qry_pessoa.Insert;
      RB_CPF.SetFocus;
      RB_CPF.Checked;
      Ed_nome.SetFocus;
  end;
end;

procedure TFrm_Pessoa.btn_buscarClick(Sender: TObject);
begin
  if Cb_buscar.text = 'Ativo' then
  begin
    box_buscar := 1;
    chamaRelatorio(box_buscar);
  end
  else if Cb_buscar.Text = 'Inativo' then
  begin
    box_buscar := 0;
    chamaRelatorio(box_buscar);
  end;
end;

procedure TFrm_Pessoa.btn_excluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir?',TMsgDlgType.mtConfirmation,
      [mbYes, mbno],0) = mrYes then
    begin
      DM_conexao.Qry_pessoa.Delete;
      DM_conexao.Qry_pessoa.Close;
      DM_conexao.Qry_pessoa.Open;
    end;
end;

procedure TFrm_Pessoa.btn_novoClick(Sender: TObject);
begin
  btnNovo;
end;

procedure TFrm_Pessoa.btn_salvaClick(Sender: TObject);
begin
  if DM_conexao.Qry_pessoa.State in[dsEdit] then
    begin
      btn_salva.Enabled := true;
      btneditar;
      Ed_nome.SetFocus;
    end
  else if DM_conexao.Qry_pessoa.State in[dsInsert] then
    begin
      btn_salva.Enabled := true;
      if ((Ed_nome.Text = '') or (Ed_end.Text = '') or (Ed_cid.Text = '') or(Ed_cpf.EditMask = '')) then
        Begin
          ShowMessage('Informe os campos obrigatórios!');
          Ed_nome.SetFocus;
        end
      else
        begin
          btnsalvar;
          btnNovo;
        end;
    end;
end;
function TFrm_Pessoa.chamaRelatorio(box_buscar: integer): integer;
begin
  DM_conexao.QRY_relatorio.close;
  DM_conexao.QRY_relatorio.sql.Clear;
  DM_conexao.QRY_relatorio.sql.add('SELECT * FROM PESSOA WHERE PESSOA.SIT_PESSOA = ' + IntToStr(box_buscar));
  DM_conexao.QRY_relatorio.open;
  DM_conexao.QRY_relatorio.active:= True;
  DM_conexao.ppReport.deviceType := dtScreen;
  DM_conexao.ppReport.showPrintDialog:= false;
  DM_conexao.ppReport.print;
end;

procedure TFrm_Pessoa.DBG_PessoaCellClick(Column: TColumn);
begin
  iniciaEdicao;
end;

procedure TFrm_Pessoa.DBG_PessoaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM_conexao.Qry_pessoaSIT_PESSOA.Value = 1 then
  begin
    DBG_Pessoa.Canvas.Brush.Color := $005BB700;
    DBG_Pessoa.Canvas.FillRect(Rect);
    DBG_Pessoa.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end
  else if DM_conexao.Qry_pessoaSIT_PESSOA.Value = 0 then
    DBG_Pessoa.Canvas.Brush.Color := $00D6D6D6;
    DBG_Pessoa.Canvas.FillRect(Rect);
    DBG_Pessoa.DefaultDrawColumnCell(Rect,DataCol,Column,State)
end;

function TFrm_Pessoa.btneditar: integer;
begin
  if DM_conexao.Qry_pessoa.Locate('CPF_CNPJ_PESSOA',Ed_cpf.Text,[]) then
    begin
      ShowMessage('CPF/CNPJ já cadastrado! Verifique');
      Ed_cpf.SetFocus;
    end
    else
    begin
      DM_conexao.Qry_pessoa.Edit;
      DM_conexao.Qry_pessoaNOME_PESSOA.Value := Ed_nome.Text;
      DM_conexao.Qry_pessoaCPF_CNPJ_PESSOA.Value := Ed_cpf.Text;
      DM_conexao.Qry_pessoaDAT_PESSOA.Value := Date_data.DateTime;
      DM_conexao.Qry_pessoaEND_PESSOA.Value := Ed_end.Text;
      DM_conexao.Qry_pessoaBAIRRO_PESSOA.Value := Ed_bairro.Text;
      DM_conexao.Qry_pessoaCID_PESSOA.Value := Ed_cid.Text;
      DM_conexao.Qry_pessoaEST_PESSOA.Value := Ed_est.Text;
      DM_conexao.Qry_pessoaEMAIL_PESSOA.Value := Ed_mail.Text;
      DM_conexao.Qry_pessoaOBS_PESSOA.Value := Obs_pessoa.Text;
      DM_conexao.Qry_pessoaCEP_PESSOA.Value := Ed_cep.Text;
      DM_conexao.Qry_pessoaTEL_PESSOA.Value := Ed_tel.Text;
      if cb_status.Text = 'Ativo' then
        DM_conexao.Qry_pessoaSIT_PESSOA.Value := 1;
      if cb_status.Text = 'Inativo' then
        DM_conexao.qry_pessoaSIT_PESSOA.Value := 0;
      DM_conexao.Qry_pessoa.Post;
      DM_conexao.Qry_pessoa.Close;
      ShowMessage('Cadastro editado com sucesso!');
      DM_conexao.Qry_pessoa.Open;
    end;
end;

procedure TFrm_Pessoa.Ed_buscaChange(Sender: TObject);
begin
  with DM_conexao.Qry_pessoa do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT COD_PESSOA, NOME_PESSOA, CPF_CNPJ_PESSOA, DAT_PESSOA,'+
              'END_PESSOA, BAIRRO_PESSOA, CID_PESSOA, EST_PESSOA, CEP_PESSOA,'+
              'TEL_PESSOA, EMAIL_PESSOA, OBS_PESSOA, SIT_PESSOA FROM PESSOA WHERE NOME_PESSOA LIKE''%'+Ed_busca.Text+'%''');
      open;
    end;
end;

procedure TFrm_Pessoa.Ed_cpfChange(Sender: TObject);
begin
  if RB_CPF.Checked then
    Ed_cpf.EditMask := '000.000.000-00;1;_'
  else if RB_CNPJ.Checked then
    Ed_cpf.EditMask := '00.000.000/0000-00;1;_';
end;

function TFrm_Pessoa.id_pessoa(GENERATOR: string): integer;
begin
    DM_conexao.QRY_codigo.close;
    DM_conexao.QRY_codigo.sql.clear;
    DM_conexao.QRY_codigo.SQL.Text := ('SELECT GEN_ID('+GENERATOR+', 1) FROM RDB$DATABASE');
    DM_conexao.QRY_codigo.Open;
    result:= DM_conexao.QRY_codigo.Fields[0].AsInteger;
    DM_conexao.QRY_codigo.Close;
end;

function TFrm_Pessoa.iniciaEdicao: integer;
var
 cpfCnpj:integer;
begin
  cpfCnpj:=Length(DBG_Pessoa.Fields[2].Value);
  DM_conexao.Qry_pessoa.Edit;
  Ed_cod.Text := IntToStr(DBG_Pessoa.Fields[0].Value);
  Ed_nome.Text := DBG_Pessoa.Fields[1].Value;
  if (cpfCnpj = 14) then
  begin
    Ed_cpf.EditMask := '000.000.000-00;1;_';
    Ed_cpf.Text := DBG_Pessoa.Fields[2].Value;
  end
  else if cpfCnpj = 18 then
  begin
    Ed_cpf.EditMask := '00.000.000/0000-00;1;_';
    Ed_cpf.Text := DBG_Pessoa.Fields[2].Value;
  end;
  Date_data.Date := DBG_Pessoa.Fields[3].Value;
  Ed_end.Text := DBG_Pessoa.Fields[4].Value;
  Ed_bairro.Text := DBG_Pessoa.Fields[5].Value;
  Ed_cid.Text := DBG_Pessoa.Fields[6].Value;
  Ed_est.Text := DBG_Pessoa.Fields[7].Value;
  Ed_cep.Text := DBG_Pessoa.Fields[8].Value;
  Ed_tel.Text := DBG_Pessoa.Fields[9].Value;
  Ed_mail.Text := DBG_Pessoa.Fields[10].Value;
  Obs_pessoa.Text := DBG_Pessoa.Fields[11].Value;
  if DBG_Pessoa.Fields[12].Value = 1 then
    CB_status.Text := 'Ativo';
  if DBG_Pessoa.Fields[12].Value = 0 then
    CB_status.Text := 'Inativo';
  DBG_Pessoa.SetFocus;
  if(cpfcnpj = 14)then
  begin
    RB_CPF.SetFocus;
  end
  else
  begin
    RB_CNPJ.SetFocus;
  end;
  Ed_cpf.EditMask := '';
end;

function TFrm_Pessoa.btnsalvar:integer;
begin
    DM_conexao.Qry_pessoa.Open();
    if DM_conexao.Qry_pessoa.Locate('CPF_CNPJ_PESSOA',Ed_cpf.Text,[]) then
    begin
      ShowMessage('CPF/CNPJ já cadastrado! Verifique');
      Ed_cpf.SetFocus;
    end
    else
    begin
      DM_conexao.Qry_pessoa.Append;
      DM_conexao.Qry_pessoaCOD_PESSOA.AsInteger := id_pessoa('COD_PESSOA');
      DM_conexao.Qry_pessoaNOME_PESSOA.Value := Ed_nome.Text;
      DM_conexao.Qry_pessoaCPF_CNPJ_PESSOA.Value := Ed_cpf.Text;
      DM_conexao.Qry_pessoaDAT_PESSOA.Value := Date_data.DateTime;
      DM_conexao.Qry_pessoaEND_PESSOA.Value := Ed_end.Text;
      DM_conexao.Qry_pessoaBAIRRO_PESSOA.Value := Ed_bairro.Text;
      DM_conexao.Qry_pessoaCID_PESSOA.Value := Ed_cid.Text;
      DM_conexao.Qry_pessoaEST_PESSOA.Value := Ed_est.Text;
      DM_conexao.Qry_pessoaEMAIL_PESSOA.Value := Ed_mail.Text;
      DM_conexao.Qry_pessoaOBS_PESSOA.Value := Obs_pessoa.Text;
      DM_conexao.Qry_pessoaCEP_PESSOA.Value := Ed_cep.Text;
      DM_conexao.Qry_pessoaTEL_PESSOA.Value := Ed_tel.Text;
      if cb_status.Text = 'Ativo' then
        DM_conexao.Qry_pessoaSIT_PESSOA.Value := 1;
      if cb_status.Text = 'Inativo' then
        DM_conexao.qry_pessoaSIT_PESSOA.Value := 0;
      DM_conexao.Qry_pessoa.Post;
      DM_conexao.Qry_pessoa.Close;
      ShowMessage('Cadastro realizado com sucesso!');
      Ed_cpf.EditMask := '';
      DM_conexao.Qry_pessoa.Open();
        DM_conexao.Qry_pessoa.Last;
    end;
end;

procedure TFrm_Pessoa.btn_relatorioClick(Sender: TObject);
begin
  btnNovo;
end;

end.
