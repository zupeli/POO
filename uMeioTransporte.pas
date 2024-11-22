unit uMeioTransporte;

interface

type
 TMeioTransporte = class

  Private   // - Membros definidos com esse especificador são visíveis somente
            //   na classe atual e classes “amigas” (friendly classes), ou seja,
            //   classes declaradas na mesma unit;
    FDescricao  : string;
    FCapacidade : integer;

  Protected // - Visível somente na classe atual, descendentes e por classes amigas;
    procedure Ligar; virtual; abstract;

  public // - Visível a partir de qualquer outra classe;
    Constructor create;
    destructor destroy; override;
    procedure Mover(); virtual;


  Published // - Visível a partir de qualquer outra classe, ativando suporte à RTTI,
            //   com a principal finalidade de serem vistas no Object Inpector.
    property Capacidade : integer read FCapacidade  write FCapacidade;
    property Descricao  : string  read FDescricao   write FDescricao;

end;

implementation

uses
  Vcl.Dialogs;

{ TMeioTransporte }

constructor TMeioTransporte.create;
begin
  inherited;
  Capacidade := 0;
  Descricao  := 'Sem Nome';
end;

procedure TMeioTransporte.Mover;
begin
  Ligar;
  ShowMessage(Descricao + ' Ligado.');
end;


destructor TMeioTransporte.destroy;
begin
// seu código de limpeza aqui
  inherited;
end;


end.
