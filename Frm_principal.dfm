object Frm_Pessoa: TFrm_Pessoa
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 680
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object P_botao: TPanel
    Left = 0
    Top = 607
    Width = 1060
    Height = 73
    Align = alBottom
    BevelOuter = bvNone
    Color = 14605532
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 606
    ExplicitWidth = 1056
    DesignSize = (
      1060
      73)
    object Lb_relatorio: TLabel
      Left = 798
      Top = 16
      Width = 82
      Height = 12
      Anchors = [akTop, akRight]
      Caption = 'Selecione o Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object P_novo: TPanel
      Left = 40
      Top = 16
      Width = 121
      Height = 41
      BevelOuter = bvNone
      Color = 16024898
      ParentBackground = False
      TabOrder = 0
      object btn_novo: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btn_relatorioClick
        ExplicitLeft = 50
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object P_salvar: TPanel
      Left = 188
      Top = 16
      Width = 129
      Height = 41
      BevelOuter = bvNone
      Color = 6010624
      ParentBackground = False
      TabOrder = 1
      object btn_salva: TSpeedButton
        Left = 0
        Top = 0
        Width = 129
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Salvar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btn_salvaClick
        ExplicitLeft = -8
        ExplicitTop = 47
      end
    end
    object P_excluir: TPanel
      Left = 342
      Top = 16
      Width = 130
      Height = 41
      BevelOuter = bvNone
      TabOrder = 2
      object btn_excluir: TButton
        Left = 0
        Top = 0
        Width = 130
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn_excluirClick
      end
    end
    object Cb_buscar: TComboBox
      Left = 798
      Top = 28
      Width = 106
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 3
      Items.Strings = (
        'Ativo'
        'Inativo')
      ExplicitLeft = 794
    end
    object btn_buscar: TButton
      Left = 912
      Top = 16
      Width = 113
      Height = 41
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = btn_buscarClick
      ExplicitLeft = 908
    end
  end
  object P_principal: TPanel
    Left = 0
    Top = 49
    Width = 1060
    Height = 558
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1056
    ExplicitHeight = 557
    DesignSize = (
      1060
      558)
    object Lb_cod: TLabel
      Left = 40
      Top = 11
      Width = 38
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_nome: TLabel
      Left = 40
      Top = 56
      Width = 83
      Height = 13
      Caption = 'Nome Completo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_CPF_CNPJ: TLabel
      Left = 624
      Top = 56
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'CPF/CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_situacao: TLabel
      Left = 891
      Top = 51
      Width = 32
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_endereco: TLabel
      Left = 40
      Top = 101
      Width = 48
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_bairro: TLabel
      Left = 444
      Top = 101
      Width = 30
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_cep: TLabel
      Left = 663
      Top = 101
      Width = 19
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_telefone: TLabel
      Left = 891
      Top = 101
      Width = 44
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_cidade: TLabel
      Left = 40
      Top = 148
      Width = 36
      Height = 13
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_estado: TLabel
      Left = 328
      Top = 148
      Width = 35
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_email: TLabel
      Left = 590
      Top = 143
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'E-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_data: TLabel
      Left = 891
      Top = 148
      Width = 103
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Data de Nascimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_obs: TLabel
      Left = 40
      Top = 192
      Width = 65
      Height = 13
      Caption = 'Observa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Lb_radion_CPF_CNPJ: TLabel
      Left = 129
      Top = 11
      Width = 87
      Height = 13
      Caption = 'F'#237'sica ou Jur'#237'dica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11711154
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 90
      Top = 99
      Width = 5
      Height = 15
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 125
      Top = 54
      Width = 5
      Height = 15
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 672
      Top = 53
      Width = 5
      Height = 15
      Anchors = [akTop, akRight]
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 77
      Top = 145
      Width = 5
      Height = 15
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBG_Pessoa: TDBGrid
      Left = 0
      Top = 336
      Width = 1060
      Height = 222
      Align = alBottom
      DataSource = DM_conexao.Ds_pessoa
      ReadOnly = True
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = DBG_PessoaCellClick
      OnDrawColumnCell = DBG_PessoaDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PESSOA'
          Title.Caption = 'C'#243'digo'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PESSOA'
          Title.Caption = 'Nome'
          Width = 329
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ_PESSOA'
          Title.Caption = 'CPF/CNPJ'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DAT_PESSOA'
          Title.Caption = 'Data Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'END_PESSOA'
          Title.Caption = 'Endere'#231'o'
          Width = 394
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO_PESSOA'
          Title.Caption = 'Bairro'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CID_PESSOA'
          Title.Caption = 'Cidade'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EST_PESSOA'
          Title.Caption = 'Estado'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP_PESSOA'
          Title.Caption = 'CEP'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEL_PESSOA'
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL_PESSOA'
          Title.Caption = 'E-mail'
          Width = 306
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS_PESSOA'
          Title.Caption = 'Observa'#231#245'es'
          Width = 351
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIT_PESSOA'
          Title.Caption = 'Situa'#231#227'o'
          Visible = True
        end>
    end
    object Ed_cod: TEdit
      Left = 40
      Top = 25
      Width = 73
      Height = 23
      CharCase = ecUpperCase
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
    end
    object Ed_nome: TEdit
      Left = 40
      Top = 70
      Width = 529
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object cb_status: TComboBox
      Left = 891
      Top = 70
      Width = 134
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 3
      Items.Strings = (
        'Ativo'
        'Inativo')
      ExplicitLeft = 887
    end
    object Ed_end: TEdit
      Left = 40
      Top = 114
      Width = 369
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 4
      ExplicitWidth = 365
    end
    object Ed_bairro: TEdit
      Left = 444
      Top = 114
      Width = 177
      Height = 23
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 5
      ExplicitLeft = 440
    end
    object Ed_cep: TMaskEdit
      Left = 664
      Top = 114
      Width = 192
      Height = 23
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      EditMask = '00000\-999;1;_'
      MaxLength = 9
      TabOrder = 6
      Text = '     -   '
      ExplicitLeft = 660
    end
    object Ed_tel: TMaskEdit
      Left = 891
      Top = 114
      Width = 134
      Height = 23
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      EditMask = '!\(99\)00000-0000;1;_'
      MaxLength = 14
      TabOrder = 7
      Text = '(  )     -    '
      ExplicitLeft = 887
    end
    object Ed_cid: TEdit
      Left = 40
      Top = 161
      Width = 257
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 8
      ExplicitWidth = 253
    end
    object Ed_est: TEdit
      Left = 328
      Top = 161
      Width = 209
      Height = 23
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 9
      ExplicitLeft = 324
    end
    object Ed_mail: TEdit
      Left = 590
      Top = 161
      Width = 266
      Height = 23
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 10
      ExplicitLeft = 586
    end
    object Date_data: TDateTimePicker
      Left = 891
      Top = 161
      Width = 134
      Height = 23
      Anchors = [akTop, akRight]
      Date = 45107.000000000000000000
      Time = 0.573900335650250800
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 11
      ExplicitLeft = 887
    end
    object Obs_pessoa: TMemo
      Left = 40
      Top = 206
      Width = 985
      Height = 73
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 12
      ExplicitWidth = 981
    end
    object Ed_cpf: TMaskEdit
      Left = 624
      Top = 70
      Width = 232
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 2
      Text = ''
      OnChange = Ed_cpfChange
    end
    object P_cpf_cnpj: TPanel
      Left = 129
      Top = 25
      Width = 384
      Height = 23
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdRightToLeftReadingOnly
      ParentBiDiMode = False
      TabOrder = 14
      object RB_CPF: TRadioButton
        Left = 15
        Top = 3
        Width = 145
        Height = 17
        Caption = 'CPF (Pessoa F'#237'sica)'
        TabOrder = 0
      end
      object RB_CNPJ: TRadioButton
        Left = 213
        Top = 3
        Width = 154
        Height = 17
        Caption = 'CNPJ (Pessoa Jur'#237'dica)'
        TabOrder = 1
      end
    end
    object P_consulta: TPanel
      Left = 0
      Top = 285
      Width = 1060
      Height = 51
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 15
      ExplicitTop = 284
      ExplicitWidth = 1056
      DesignSize = (
        1060
        51)
      object Lb_consulta: TLabel
        Left = 718
        Top = 9
        Width = 50
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11711154
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Ed_busca: TEdit
        Left = 718
        Top = 22
        Width = 307
        Height = 23
        Anchors = [akTop, akRight]
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = Ed_buscaChange
        ExplicitLeft = 714
      end
    end
  end
  object P_titulo: TPanel
    Left = 0
    Top = 0
    Width = 1060
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 1056
    object Label1: TLabel
      Left = 40
      Top = 8
      Width = 309
      Height = 34
      Caption = 'CADASTRO DE PESSOA'
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16746255
      Font.Height = -31
      Font.Name = 'Berlin Sans FB'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
end
