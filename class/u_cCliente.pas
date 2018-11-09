unit u_cCliente;

interface
uses System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Dialogs, u_dtm_conexao,
     ZAbstractConnection, ZConnection,ZAbstractRODataset, ZAbstractDataset,
     ZDataset, system.SysUtils;

type
  TCliente = class
  private
    conexaoDb: TZConnection;

    f_id: integer;
    f_nome: String;
    f_endereco: String;
    f_cidade: String;
    f_numero: String;
    f_bairro: String;
    f_cep: String;
    f_email: String;
    f_telefone: String;
    f_dataNascimento: String;
    f_estado: String;

    function getCodigo: integer;
    procedure setCodigo(const Value: integer);
    function getBairro: string;
    function getCep: string;
    function getCidade: string;
    function getDataNascimento: string;
    function getEmail: string;
    function getEndereco: string;
    function getEstado: string;
    function getNome: string;
    function getNumero: string;
    function getTelefone: string;
    procedure setBairro(const Value: string);
    procedure setCep(const Value: string);
    procedure setCidade(const Value: string);
    procedure setDataNascimento(const Value: string);
    procedure setEmail(const Value: string);
    procedure setEndereco(const Value: string);
    procedure setEstado(const Value: string);
    procedure setNome(const Value: string);
    procedure setNumero(const Value: string);
    procedure setTelefone(const Value: string);
  public
      constructor Create(aConexao:TZConnection);
      destructor Destroy; override;
      function inserir:Boolean;
      function atualizar:Boolean;
      function apagar(id: integer;descricao: string):Boolean;
      function selecionar(id: integer):Boolean;
  published
      property codigo: integer read getCodigo write setCodigo;
      property nome: string read getNome write setNome;
      property endereco: string read getEndereco write setEndereco;
      property cidade: string read getCidade write setCidade;
      property numero: string read getNumero write setNumero;
      property bairro: string read getBairro write setBairro;
      property cep: string read getCep write setCep;
      property email: string read getEmail write setEmail;
      property telefone: string read getTelefone write setTelefone;
      property dataNascimento: string read getDataNascimento write setDataNascimento;
      property estado: string read getEstado write setEstado;

  end;

implementation

{ TCliente }

{$REGION 'CRUD'}
function TCliente.apagar(id: integer; descricao: string): Boolean;
var
  qry:TZQuery;
begin
  if MessageDlg('Apagar registro: '+IntToStr(id)+#13+'Nome: '+descricao,mtConfirmation,[mbYes,mbNo],0) = mrNo then
  begin
    result := false;
    abort;
  end;

  try
    result:= true;
    qry := TZQuery.Create(nil);
    qry.Connection := conexaoDb;
    qry.SQL.Clear;
    qry.SQL.Add('delete from clientes where id=:id');
    qry.ParamByName('id').Value := id;

    try
      qry.ExecSQL;
    except
      result := false;
    end;
  finally
    if(Assigned(qry)) then
      FreeAndNil(qry);
  end;
end;

function TCliente.atualizar: Boolean;
var
  qry:TZQuery;
begin
  try
    result:= true;
    qry := TZQuery.Create(nil);
    qry.Connection := conexaoDb;
    qry.SQL.Clear;
    qry.SQL.Add('update clientes set '+
                'numero=:numero '+
                'endereco=:endereco '+
                'cidade=:cidade '+
                'bairro=:bairro '+
                'estado=:estado '+
                'cep=:cep '+
                'telefone=:telefone '+
                'email=:email '+
                'dataNascimento=:dataNascimento '+
                'numero=:numero '+
                'where id=:id');
    qry.ParamByName('id').Value := self.f_id;
    qry.ParamByName('numero').Value := self.f_numero;
    qry.ParamByName('endereco').Value := self.f_endereco;
    qry.ParamByName('cidade').Value := self.f_cidade;
    qry.ParamByName('bairro').Value := self.f_bairro;
    qry.ParamByName('estado').Value := self.f_estado;
    qry.ParamByName('cep').Value := self.f_cep;
    qry.ParamByName('telefone').Value := self.f_telefone;
    qry.ParamByName('email').Value := self.f_email;
    qry.ParamByName('dataNascimento').Value := self.f_dataNascimento;
    qry.ParamByName('numero').Value := self.f_numero;

    try
      qry.ExecSQL;
    except
      result := false;
    end;
  finally
    if(Assigned(qry)) then
      FreeAndNil(qry);
  end;
end;

function TCliente.selecionar(id: integer): Boolean;
var
  qry:TZQuery;
begin
  try
    result:= true;
    qry := TZQuery.Create(nil);
    qry.Connection := conexaoDb;
    qry.SQL.Clear;
    qry.SQL.Add('select * from clientes where id = :id;');
    qry.ParamByName('id').Value := id;
    try
      qry.Open;

      self.f_id := id;
      self.f_nome := qry.FieldByName('nome').AsString;
      self.f_endereco := qry.FieldByName('endereco').AsString;
      self.f_cidade := qry.FieldByName('cidade').AsString;
      self.f_bairro := qry.FieldByName('bairro').AsString;
      self.f_estado := qry.FieldByName('estado').AsString;
      self.f_cep := qry.FieldByName('cep').AsString;
      self.f_telefone := qry.FieldByName('telefone').AsString;
      self.f_email := qry.FieldByName('email').AsString;
      self.f_dataNascimento := qry.FieldByName('dataNascimento').AsString;
      self.f_numero := qry.FieldByName('numero').AsString;
    except
      result := false;
    end;
  finally
    if(Assigned(qry)) then
      FreeAndNil(qry);
  end;
end;

function TCliente.inserir: Boolean;
var
  qry:TZQuery;
begin
  try
    result:= true;
    qry := TZQuery.Create(nil);
    qry.Connection := conexaoDb;
    qry.SQL.Clear;
    qry.SQL.Add('insert into clientes '+
                '(numero,endereco,cidade,bairro,estado,cep,telefone,email,dataNascimento,nome) '+
                'values(:numero,:endereco,:cidade,:bairro,:estado,:cep,:telefone,:email,:dataNascimento,:nome);');
    qry.ParamByName('nome').Value := self.f_nome;
    qry.ParamByName('endereco').Value := self.f_endereco;
    qry.ParamByName('cidade').Value := self.f_cidade;
    qry.ParamByName('bairro').Value := self.f_bairro;
    qry.ParamByName('estado').Value := self.f_estado;
    qry.ParamByName('cep').Value := self.f_cep;
    qry.ParamByName('telefone').Value := self.f_telefone;
    qry.ParamByName('email').Value := self.f_email;
    qry.ParamByName('dataNascimento').Value := self.f_dataNascimento;
    qry.ParamByName('numero').Value := self.f_numero;

    try
      qry.ExecSQL;
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
constructor TCliente.Create(aConexao: TZConnection);
begin
  ConexaoDb := aConexao;
end;

destructor TCliente.Destroy;
begin
  inherited;
end;
{$ENDREGION}

{$REGION 'GET AND SET'}
// GET
function TCliente.getBairro: string;
begin
  Result := self.f_bairro;
end;

function TCliente.getCep: string;
begin
  Result := self.f_cep;
end;

function TCliente.getCidade: string;
begin
  Result := self.f_cidade;
end;

function TCliente.getCodigo: integer;
begin
  Result := self.f_id;
end;

function TCliente.getDataNascimento: string;
begin
  Result := self.f_dataNascimento;
end;

function TCliente.getEmail: string;
begin
  Result := self.f_email;
end;

function TCliente.getEndereco: string;
begin
  Result := self.f_endereco;
end;

function TCliente.getEstado: string;
begin
  Result := self.f_estado;
end;

function TCliente.getNome: string;
begin
  Result := self.f_nome;
end;

function TCliente.getNumero: string;
begin
  Result := self.f_numero;
end;

function TCliente.getTelefone: string;
begin
  Result := self.f_telefone;
end;

// SET
procedure TCliente.setBairro(const Value: string);
begin
  self.f_bairro := Value;
end;

procedure TCliente.setCep(const Value: string);
begin
  self.f_cep := Value;
end;

procedure TCliente.setCidade(const Value: string);
begin
  self.f_cidade := Value;
end;

procedure TCliente.setCodigo(const Value: integer);
begin
  self.f_id := Value;
end;

procedure TCliente.setDataNascimento(const Value: string);
begin
  self.f_dataNascimento := Value;
end;

procedure TCliente.setEmail(const Value: string);
begin
  self.f_email := Value;
end;

procedure TCliente.setEndereco(const Value: string);
begin
  self.f_endereco := Value;
end;

procedure TCliente.setEstado(const Value: string);
begin
  self.f_estado := Value;
end;

procedure TCliente.setNome(const Value: string);
begin
  self.f_nome := Value;
end;

procedure TCliente.setNumero(const Value: string);
begin
  self.f_numero := Value;
end;

procedure TCliente.setTelefone(const Value: string);
begin
  self.f_telefone := Value;
end;
{$ENDREGION}

end.
