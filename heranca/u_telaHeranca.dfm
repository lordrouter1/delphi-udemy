object frm_telaHeranca: Tfrm_telaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Titulo'
  ClientHeight = 514
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc_principal: TPageControl
    Left = 0
    Top = 0
    Width = 831
    Height = 476
    ActivePage = tbs_listagem
    Align = alClient
    TabOrder = 0
    object tbs_listagem: TTabSheet
      Caption = 'Listagem'
      object pnl_topo: TPanel
        Left = 0
        Top = 0
        Width = 823
        Height = 50
        Align = alTop
        TabOrder = 0
        object lbl_indice: TLabel
          Left = 7
          Top = 2
          Width = 78
          Height = 13
          Caption = 'Campo Pesquisa'
        end
        object msk_pesquisa: TMaskEdit
          Left = 4
          Top = 21
          Width = 237
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Pesquisar'
          OnChange = msk_pesquisaChange
        end
        object btn_pesquisa: TBitBtn
          Left = 247
          Top = 19
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          TabOrder = 1
          Visible = False
        end
      end
      object grd_listagem: TDBGrid
        Left = 0
        Top = 50
        Width = 823
        Height = 398
        Align = alClient
        DataSource = bit
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grd_listagemDblClick
        OnTitleClick = grd_listagemTitleClick
      end
    end
    object tbs_manutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnl_rodape: TPanel
    Left = 0
    Top = 476
    Width = 831
    Height = 38
    Align = alBottom
    TabOrder = 1
    object btn_novo: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Novo'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000009C8B
        7E00FF00FF00B1908E00B09E9000B2A09200B5A19300BAA69700D3C1B100D5C0
        B700DECFCE00FFDEC200FFE1C600FFE3CB00FFE6CF00FFE9D400FFEBD900FFED
        DD00FEEFE200FEF2E600FEF4EB00FAF6F000FEF7F000FEFAF400FEFBFA000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020203030303
        0303030303030303020202020318181818181818181818030202020203181818
        1818181818181803020202020317171717171717171717030202020203161616
        1616161616161603020202020314141414141414141414030202020203131313
        1313131313131303020202020312121212121212121212030202020203111111
        1111111111111103020202020311101110111008080808030202020203100E10
        0E1010060504040302020202030E0E0E0E0E0E010101010302020202030E0C0E
        0C0E0614140A030202020202030C0C0C0C0C07170803020202020202030B0B0B
        0B0B060803020202020202020303030303030303020202020202}
      TabOrder = 0
      OnClick = btn_novoClick
    end
    object btn_alterar: TBitBtn
      Left = 89
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Alterar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000001FF00FFFF00FF
        FF00FF7F331B8833138A37128A3B168A3B16FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF84351E8E32107C321FFF00FFFF00FFFF00FF93
        4112853F1EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF35221D35221D
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C4219984A13984A13FF00FFFF00
        FFFF00FFFF00FFFF00FF35221D1C63780076A900699A004C88FF00FFFF00FFFF
        00FFFF00FFFF00FF9A4E15A8590FA55A12A65C14B36810AA6214FF00FF02AAD8
        00B6EA036C970930940B0983FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0281AB00BEEE03161707119C0C16980B0C83FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0281AB
        056AF2061C7402000007119C0C17990B0C83FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0B1CBB2555FF061C7402000007119C0C
        169C0B0C82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0F26BF2455FF061C7402000007119C0C169C0B0C83FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1028C22455FF061C7402
        000007119C0C169C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF1129C42454FF061C7402000007119C0B169D0B0C83FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF112CC924
        55FF061C7402000007119C07119C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF132FCD2354FF061C7400000007119C999C
        D9171895FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1531D11E4EFF061C74A3A19A7B7BD700018FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1532D2ACBFFF6C76E10000
        A6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF2F31A4020EAAFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = btn_alterarClick
    end
    object btn_cancelar: TBitBtn
      Left = 332
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF892602FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF8A27039C34028A2703FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2703AD4101AB3E018A27
        03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF8A27038E2903B849009F35018A2703FF00FFFF00FF892602892602
        8926028926028926028926028926028A27038A2703FF00FF8A27038E2903B849
        009830028A2703FF00FF892602D8721BC65B0CB64902B44300B54500B64500B6
        46009C3402892602FF00FF8A2703932E02B849008E2903FF00FF892602FFA637
        E27B1ED86C10892602892602892602892602892602FF00FFFF00FFFF00FF8A27
        03A63B01A63B018A2703892602FFAA39E27B1EDE791EC1590F872302FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF902B02B64500892703892602FFAA39
        A03B0A8A2803F6932AAC460C872402FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF892603C45100892603892602FFAB3A8926028623019D3809FA982EC25B1287
        2402FF00FFFF00FFFF00FFFF00FF8A2703932D02BC4B00892603892602FFAB3A
        892602FF00FF8824029E3809EB8928D16C198E2803892502FF00FF8A26038926
        03B14300A63B018A2703892602FFAC3A892602FF00FFFF00FF8925028F2A03D5
        701FEA8623AB43099A3403972F02B14300B645008E2903FF00FF882402FB9C33
        892602FF00FFFF00FFFF00FF892602882402A5400CCB6516CB600FB246039A33
        028926038A2703FF00FFFF00FF892502FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF8926028925028926028926038A2703FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btn_cancelarClick
    end
    object btn_gravar: TBitBtn
      Left = 250
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Gravar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF7F2B287F2B28A18283A18283A18283A1
        8283A18283A18283A182837A1C1C7F2B28FF00FFFF00FFFF00FFFF00FF7F2B28
        CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
        2D7F2B28FF00FFFF00FFFF00FF7F2B28C24A4BB14444E2D9D9791617791617D9
        D8DAD9DEE1D3D9DCC1BDC1761111982D2D7F2B28FF00FFFF00FFFF00FF7F2B28
        C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
        2C7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AB04141EADEDEE7DDDDDDD4D5D7
        D3D5D5D7D9D7D8DACAC2C57E17179E31317F2B28FF00FFFF00FFFF00FF7F2B28
        BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
        4A7F2B28FF00FFFF00FFFF00FF7F2B28A33B39B1605DC68684CB918FCC9190CC
        908FCB8988C98988CB9391CC9696BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
        BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
        4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FFFF00FF
        7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
        28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = btn_gravarClick
    end
    object btn_apagar: TBitBtn
      Left = 169
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Apaga&r'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
        0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
        B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
        0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
        00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
        05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
        00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
        0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 4
      OnClick = btn_apagarClick
    end
    object btn_fechar: TBitBtn
      Left = 745
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btn_fecharClick
    end
    object btn_navigation: TDBNavigator
      Left = 413
      Top = 5
      Width = 224
      Height = 25
      DataSource = bit
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object qry_listagem: TZQuery
    Connection = dtm_conexao.conexao_db
    Params = <>
    Left = 768
    Top = 24
  end
  object bit: TDataSource
    DataSet = qry_listagem
    Left = 800
    Top = 24
  end
end
