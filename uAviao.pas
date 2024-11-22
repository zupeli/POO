unit uAviao;

interface

uses uMeioTransporte;

type
  TAviao = class(TMeioTransporte)
//  HorasVoo   : integer;
//  procedure Mover; override;
//  procedure Ligar; override;

  constructor create;
  private
    FHorasVoo: integer;
    function GetHorasVoo: integer;
    procedure SetHorasVoo(const Value: integer);
  protected
    procedure Ligar(); override;
  public
    procedure Mover(); override;

  published
    property HorasVoo: integer read GetHorasVoo write SetHorasVoo;
 end;

implementation

uses
  Vcl.Dialogs;

{ TAviao }

constructor TAviao.create;
begin
  inherited; // chama o construtor da classe base
  HorasVoo := 0;
end;

function TAviao.GetHorasVoo: integer;
begin
  result := FHorasVoo;
end;

procedure TAviao.Ligar;
begin
  ShowMessage('Ligando o aviao '+Descricao);
end;

procedure TAviao.Mover;
begin
  inherited;
  ShowMessage(Descricao+' está voando.');
end;

procedure TAviao.SetHorasVoo(const Value: integer);
begin
  if Value < 0 then
    FHorasVoo := 0
  else
    FHorasVoo := Value;
end;

end.
