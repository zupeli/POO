unit uMeioTransporte;

interface

type
 TMeioTransporte = class

  Private   // - Membros definidos com esse especificador s�o vis�veis somente
            //   na classe atual e classes �amigas� (friendly classes), ou seja,
            //   classes declaradas na mesma unit;
    FDescricao  : string;
    FCapacidade : integer;

  Protected // - Vis�vel somente na classe atual, descendentes e por classes amigas;
    procedure Ligar; virtual; abstract;

  public // - Vis�vel a partir de qualquer outra classe;
    Constructor create;
    destructor destroy; override;
    procedure Mover(); virtual;


  Published // - Vis�vel a partir de qualquer outra classe, ativando suporte � RTTI,
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
// seu c�digo de limpeza aqui
  inherited;
end;


end.
