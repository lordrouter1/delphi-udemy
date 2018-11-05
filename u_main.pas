unit u_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, u_dtm_conexao;

type
  Tfrm_main = class(TForm)
    MainMenu: TMainMenu;
    Arquivos1: TMenuItem;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatorio1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    Fechar1: TMenuItem;
    Venda1: TMenuItem;
    Cliente2: TMenuItem;
    N2: TMenuItem;
    Produto2: TMenuItem;
    N3: TMenuItem;
    VendaporData1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses u_cad_categoria;

procedure Tfrm_main.Categoria1Click(Sender: TObject);
begin
  frm_cad_categoria := tfrm_cad_categoria.create(self);
  frm_cad_categoria.showmodal;
  frm_cad_categoria.release;
end;

procedure Tfrm_main.Fechar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  dtm_conexao := Tdtm_conexao.Create(self);
  dtm_conexao.conexao_db.SQLHourGlass := true;
  dtm_conexao.conexao_db.Connect;
end;

end.
