program vendas;

uses
  Vcl.Forms,
  u_main in 'u_main.pas' {frm_main},
  u_dtm_conexao in 'dataModule\u_dtm_conexao.pas' {dtm_conexao: TDataModule},
  u_telaHeranca in 'heranca\u_telaHeranca.pas' {frm_telaHeranca},
  u_cad_categoria in 'cadastro\u_cad_categoria.pas' {frm_cad_categoria},
  u_enum in 'u_enum.pas',
  u_cCategoria in 'class\u_cCategoria.pas',
  u_cCliente in 'class\u_cCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
