inherited frm_cad_categoria: Tfrm_cad_categoria
  Caption = 'Cadastro de Categoria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc_principal: TPageControl
    ActivePage = tbs_manutencao
    inherited tbs_listagem: TTabSheet
      inherited grd_listagem: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 713
            Visible = True
          end>
      end
    end
    inherited tbs_manutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 823
      ExplicitHeight = 448
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
        Left = 4
        Top = 88
        Width = 399
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 40
        TabOrder = 1
      end
    end
  end
  inherited pnl_rodape: TPanel
    inherited btn_navigation: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qry_listagem: TZQuery
    Active = True
    SQL.Strings = (
      'select * from categoriaid')
    object qry_listagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 40
    end
    object qry_listagemid: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'id'
      Required = True
    end
  end
end
