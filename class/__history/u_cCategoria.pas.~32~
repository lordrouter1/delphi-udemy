unit u_cCategoria;

interface

uses System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Dialogs, u_dtm_conexao,
     ZAbstractConnection, ZConnection,ZAbstractRODataset, ZAbstractDataset,
     ZDataset, system.SysUtils;

type
  TCategoria = class
  private
    conexaoDb: TZConnection;
    f_id: integer;
    f_descricao: String;
    function getCodigo: integer;
    function getDescricao: string;
    procedure setCodigo(const Value: integer);
    procedure setDescricao(const Value: string);
  public
      constructor Create(aConexao:TZConnection);
      destructor Destroy; override;
      function inserir:Boolean;
      function atualizar:Boolean;
      function apagar:Boolean;
      function selecionar(id: integer):Boolean;
  published
      property codigo: integer read getCodigo write setCodigo;
      property descricao: string read getDescricao write setDescricao;

  end;

implementation

{ TCategoria }

{$REGION 'CRUD'}
function TCategoria.apagar: Boolean;
begin
  ShowMessage('Apagado');
  result := true;
end;

function TCategoria.atualizar: Boolean;
begin
  ShowMessage('Atualizado');
  result := true;
end;

function TCategoria.inserir: Boolean;
var
  qry:TZQuery;
begin
  try
    result:= true;
    qry := TZQuery.Create(nil);
    qry.Connection := conexaoDb;
    qry.SQL.Clear;
    qry.SQL.Add('insert into categoriaid(descricao) values(:descricao);');
    qry.ParamByName('descricao').Value := self.f_descricao;
    try
      qry.ExecSQL;
    except
      result:= false;
    end;
  finally
    if(Assigned(qry)) then
      FreeAndNil(qry);
  end;
end;

function TCategoria.selecionar(id: integer): Boolean;
var
  qry:TZQuery;
begin
  try
    result:= true;
    qry := TZQuery.Create(nil);
    qry.Connection := conexaoDb;
    qry.SQL.Clear;
    qry.SQL.Add('select descricao from categoriaid where id = :id;');
    qry.ParamByName('id').Value := id;
    try
      qry.Open;

      self.f_id := id;
      self.f_descricao := qry.FieldByName('descricao').AsString;
    except
      result := false;
    end;
  finally
    if(Assigned(qry)) then
      FreeAndNil(qry);
  end;
end;
{$ENDREGION}

{$REGION 'CONSTRUCT AND DESTRUCT'}
constructor TCategoria.Create(aConexao:TZConnection);
begin
  ConexaoDb := aConexao;
end;

destructor TCategoria.Destroy;
begin
  ShowMessage('Destruido!');
  inherited;
end;
{$ENDREGION}

{$REGION 'GET AND SET'}
function TCategoria.getCodigo: integer;
begin
 result := self.f_id;
end;

function TCategoria.getDescricao: string;
begin
  result := self.f_descricao;
end;

procedure TCategoria.setCodigo(const Value: integer);
begin
  self.f_id := value;
end;

procedure TCategoria.setDescricao(const Value: string);
begin
  self.f_descricao := value;
end;
{$ENDREGION}

end.
