inherited frm_cad_cliente: Tfrm_cad_cliente
  Caption = 'Cadastro de Clientes'
  ClientWidth = 725
  ExplicitWidth = 731
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
    Width = 725
    ActivePage = tbs_manutencao
    inherited tbs_listagem: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited pnl_topo: TPanel
        Width = 717
      end
      inherited grd_listagem: TDBGrid
        Width = 717
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
        Left = 4
        Top = 271
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
      object edt_descricao: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 80
        Width = 399
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 40
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
        MaxLength = 40
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
        MaxLength = 40
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
        MaxLength = 40
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
        MaxLength = 40
        TabOrder = 7
      end
      object dt_data: TDateEdit
        Left = 4
        Top = 290
        Width = 121
        Height = 21
        DialogTitle = 'Selecione a data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 8
      end
    end
  end
  inherited pnl_rodape: TPanel
    Width = 725
    inherited btn_fechar: TBitBtn
      Left = 644
      ExplicitLeft = 700
    end
    inherited btn_navigation: TDBNavigator
      Hints.Strings = ()
    end
  end
  object MaskEdit1: TMaskEdit [3]
    Left = 436
    Top = 259
    Width = 197
    Height = 21
    EditMask = '(99) 99999-9999;1;_'
    MaxLength = 15
    TabOrder = 2
    Text = '(  )      -    '
  end
end