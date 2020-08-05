unit Cloud.Avaliacao;

interface

uses
  Cloud.Avaliacao.Interfaces;

  type
    TAvaliacao = class(TInterfacedObject,ICloudAvaliacao)
     private
      { private declarations }
      // fields
      FIdade: Integer;
      FPeso: Double;
      FAltura: Double;
      // getters
      function GetIdade: Integer;
      function GetPeso: Double;
      function GetAltura: Double;
    procedure SetAltura(const Value: Double);
    procedure SetIdade(const Value: Integer);
    procedure SetPeso(const Value: Double);

      // setters
  protected
    { protected declarations }
    public
    { public declarations }

    // encapsulamento
    property Idade: Integer read GetIdade write SetIdade;
    property Peso: Double read GetPeso write SetPeso;
    property Altura: Double read GetAltura write SetAltura;
    // metodos
    function CalculaIMC(pAltura, pPeso: Double):Double;
    function ClassificacaoIMC(pIMC: Double; pIdade: integer): string;
    constructor create;
    destructor Destroy; override;
    class function New : ICloudAvaliacao;
   published
     { published declarations }
  end;

implementation

{ TAvaliacao }

function TAvaliacao.CalculaIMC(pAltura, pPeso: Double): Double;
begin
   Result := 0;
   if pAltura > 0 then
      Result := pPeso / (pAltura * pAltura);
end;

function TAvaliacao.ClassificacaoIMC(pIMC: Double; pIdade: integer): string;
begin
     if (pIdade < 18) then
       Result := 'Não calculado'
     else if ((pIdade >= 18) and (pIdade < 60)) then
     begin
       if pIMC < 18.5 then
         Result := 'Abaixo do Peso'
       else if (pIMC >= 18.5) and (pIMC < 25) then
         Result := 'Peso Normal'
       else if (pIMC >= 25) and (pIMC < 30) then
         Result := 'Sobrepeso'
       else if (pIMC >= 30) and (pIMC < 35) then
         Result := 'Obesidade I'
       else if (pIMC >= 35) and (pIMC < 40) then
         Result := 'Obesidade II'
       else Result := 'Obesidade III';
     end
     else
     begin
       if pIMC < 22 then
         Result := 'Abaixo do Peso'
       else if (pIMC >= 22) and (pIMC < 27) then
         Result := 'Peso Normal'
       else Result := 'Acima do peso';
     end;
end;

constructor TAvaliacao.create;
begin
   inherited;

end;

destructor TAvaliacao.Destroy;
begin

  inherited;
end;

function TAvaliacao.GetAltura: Double;
begin
   Result := Self.FAltura;
end;

function TAvaliacao.GetIdade: Integer;
begin
   Result := Self.FIdade;
end;

function TAvaliacao.GetPeso: Double;
begin
   Result := Self.FPeso;
end;

class function TAvaliacao.New: ICloudAvaliacao;
begin
   Result := Self.create;
end;

procedure TAvaliacao.SetAltura(const Value: Double);
begin
   Self.FAltura := Value;
end;

procedure TAvaliacao.SetIdade(const Value: Integer);
begin
   Self.FIdade := Value;
end;

procedure TAvaliacao.SetPeso(const Value: Double);
begin
   Self.FPeso := Value;
end;

end.



