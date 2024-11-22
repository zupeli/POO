unit uCarro;

interface

uses uMeioTransporte;

 type
  TCarro = class(TMeioTransporte)
//  Quilometragem : integer;
//  procedure Mover; override;
//  procedure Ligar; override;

  constructor create;
  private
    FQuilometragem : integer;
    function GetQuilometragem: integer;
    procedure SetQuilometragem(const Value: integer);
  protected
    procedure Ligar; override;
  public
    procedure Mover; override;
  published
    property Quilometragem: integer read GetQuilometragem write SetQuilometragem;
 end;

implementation

uses
  Vcl.Dialogs;

{ TCarro }

constructor TCarro.create;
begin
 inherited; // chama o construtor da classe base
 Quilometragem := 0;
end;

function TCarro.GetQuilometragem: integer;
begin
  result := FQuilometragem;
end;

procedure TCarro.Ligar;
begin
  ShowMessage('Ligando o carro...' + Descricao);

end;

procedure TCarro.Mover;
begin
  inherited;
  ShowMessage(Descricao+' entrou em movimento.');
end;

procedure TCarro.SetQuilometragem(const Value: integer);
begin
  if Value < 0 then
    FQuilometragem := 0
  else
    FQuilometragem := Value;
end;

end.
