unit u_cCategoria;

interface

uses System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Dialogs;

type
  TCategoria = class
    private
    public
      constructor Create;
      destructor Destroy; override;
    published
  end;

implementation

{ TCategoria }

constructor TCategoria.Create;
begin
  ShowMessage('Criado!');
end;

destructor TCategoria.Destroy;
begin
  ShowMessage('Destruido!');
  inherited;
end;

end.
