inherited frm_cad_cliente: Tfrm_cad_cliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 396
  ClientWidth = 816
  ExplicitWidth = 822
  ExplicitHeight = 424
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 436
    Top = 242
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  inherited pgc_principal: TPageControl
    Width = 816
    Height = 358
    inherited tbs_listagem: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited pnl_topo: TPanel
        Width = 808
      end
      inherited grd_listagem: TDBGrid
        Width = 808
        Height = 280
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 317
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 412
            Visible = True
          end>
      end
    end
    inherited tbs_manutencao: TTabSheet
      object lbl_cep: TLabel
        Left = 432
        Top = 63
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object lbl_telefone: TLabel
        Left = 432
        Top = 218
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object lbl_data: TLabel
        Left = 433
        Top = 273
        Width = 95
        Height = 13
        Caption = 'Data de nascimento'
      end
      object edt_codigo: TLabeledEdit
        Tag = 2
        Left = 4
        Top = 31
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edt_nome: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 80
        Width = 399
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 60
        TabOrder = 1
      end
      object msk_cep: TMaskEdit
        Left = 432
        Top = 80
        Width = 200
        Height = 21
        EditMask = '99.999-999;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  .   -   '
      end
      object edt_endereco: TLabeledEdit
        Tag = 1
        Left = 4
        Top = 129
        Width = 399
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 60
        TabOrder = 3
      end
      object edt_numero: TLabeledEdit
        Tag = 1
        Left = 432
        Top = 129
        Width = 200
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Numero'
        MaxLength = 40
        NumbersOnly = True
        TabOrder = 4
      end
      object edt_cidade: TLabeledEdit
        Tag = 1
        Left = 5
        Top = 181
        Width = 397
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 50
        TabOrder = 5
      end
      object edt_estado: TLabeledEdit
        Tag = 1
        Left = 432
        Top = 181
        Width = 200
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Estado'
        MaxLength = 2
        TabOrder = 6
      end
      object edt_email: TLabeledEdit
        Tag = 1
        Left = 5
        Top = 235
        Width = 397
        Height = 21
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Email'
        MaxLength = 100
        TabOrder = 7
      end
      object dt_data: TDateEdit
        Left = 432
        Top = 292
        Width = 121
        Height = 21
        DialogTitle = 'Selecione a data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 8
      end
      object edt_bairro: TLabeledEdit
        Tag = 1
        Left = 5
        Top = 292
        Width = 397
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        MaxLength = 40
        TabOrder = 9
      end
      object MaskEdit1: TMaskEdit
        Left = 432
        Top = 235
        Width = 198
        Height = 21
        EditMask = '(99) 99999-9999;1;_'
        MaxLength = 15
        TabOrder = 10
        Text = '(  )      -    '
      end
    end
  end
  inherited pnl_rodape: TPanel
    Top = 358
    Width = 816
    inherited btn_fechar: TBitBtn
      Left = 735
      ExplicitLeft = 700
    end
    inherited btn_navigation: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qry_listagem: TZQuery
    SQL.Strings = (
      'SELECT'
      '  *'
      'from'
      '  clientes;')
    Left = 400
    object qry_listagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object qry_listagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Required = True
      Size = 60
    end
    object qry_listagemcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Required = True
      Size = 50
    end
    object qry_listagembairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Required = True
      Size = 40
    end
    object qry_listagemestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Required = True
      Size = 2
    end
    object qry_listagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Required = True
      Size = 10
    end
    object qry_listagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Required = True
    end
    object qry_listagememail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Required = True
      Size = 100
    end
    object qry_listagemdataNascimento: TDateTimeField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'dataNascimento'
      Required = True
    end
    object qry_listagemnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Required = True
    end
    object qry_listagemid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Required = True
    end
  end
  inherited bit: TDataSource
    Left = 448
    Top = 40
  end
end
