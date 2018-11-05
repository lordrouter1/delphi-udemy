unit u_cad_categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_telaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, u_cCategoria;

type
  Tfrm_cad_categoria = class(Tfrm_telaHeranca)
    qry_listagemdescricao: TWideStringField;
    qry_listagemid: TIntegerField;
    edt_codigo: TLabeledEdit;
    edt_descricao: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    oCategoria: TCategoria;
  public
    { Public declarations }
  end;

var
  frm_cad_categoria: Tfrm_cad_categoria;

implementation

{$R *.dfm}
procedure Tfrm_cad_categoria.FormCreate(Sender: TObject);
begin
  inherited;
  oCategoria := TCategoria.Create;
  indiceAtual:='descricao';
end;

end.
