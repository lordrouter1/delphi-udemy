unit u_cad_categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_telaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, u_cCategoria, u_dtm_conexao, u_enum;

type
  Tfrm_cad_categoria = class(Tfrm_telaHeranca)
    qry_listagemdescricao: TWideStringField;
    qry_listagemid: TIntegerField;
    edt_codigo: TLabeledEdit;
    edt_descricao: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_alterarClick(Sender: TObject);
  private
    { Private declarations }
    oCategoria: TCategoria;
    indiceAtual: string;
    function excluir:Boolean; override;
    function gravar(EstadoCadastro:TEnum):Boolean; override;
  public
    { Public declarations }
  end;

var
  frm_cad_categoria: Tfrm_cad_categoria;

implementation

{$R *.dfm}

{$REGION 'OVERRIDE'}
procedure Tfrm_cad_categoria.btn_alterarClick(Sender: TObject);
begin
  inherited;
  if oCategoria.selecionar(qry_listagem.FieldByName('id').AsInteger) then
  begin
    edt_codigo.Text := IntToStr(oCategoria.codigo);
    edt_descricao.Text := oCategoria.descricao;
  end
  else
  begin
    btn_cancelar.Click;
    abort;
  end;
end;

function Tfrm_cad_categoria.excluir: Boolean;
begin
  result := oCategoria.apagar;
end;

function Tfrm_cad_categoria.gravar(EstadoCadastro: TEnum): Boolean;
begin
  if (edt_codigo.Text <> '') then
    oCategoria.codigo := StrToInt(edt_codigo.Text)
  else
    oCategoria.codigo := 0;

  oCategoria.descricao := edt_descricao.Text;

  if (sysStatus=te_inserir) then
    result := oCategoria.inserir
  else if (sysStatus=te_alterar) then
    result := oCategoria.atualizar;

end;
{$ENDREGION}

procedure Tfrm_cad_categoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(oCategoria) then
    FreeAndNil(oCategoria);

end;

procedure Tfrm_cad_categoria.FormCreate(Sender: TObject);
begin
  inherited;
  oCategoria := TCategoria.Create(dtm_conexao.conexao_db);
  indiceAtual:='descricao';
end;

end.
