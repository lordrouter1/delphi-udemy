unit u_cad_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_telaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit;

type
  Tfrm_cad_cliente = class(Tfrm_telaHeranca)
    edt_codigo: TLabeledEdit;
    edt_descricao: TLabeledEdit;
    msk_cep: TMaskEdit;
    lbl_cep: TLabel;
    edt_endereco: TLabeledEdit;
    edt_numero: TLabeledEdit;
    edt_cidade: TLabeledEdit;
    edt_estado: TLabeledEdit;
    edt_email: TLabeledEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    lbl_telefone: TLabel;
    dt_data: TDateEdit;
    lbl_data: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_cliente: Tfrm_cad_cliente;

implementation

{$R *.dfm}

end.
