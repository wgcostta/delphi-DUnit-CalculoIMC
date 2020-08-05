unit Cloud.Avaliacao.Interfaces;

interface
type
  ICloudAvaliacao = interface
    ['{0C9584CF-ED3B-44BE-8591-B6880746AC30}']
    function CalculaIMC(pAltura, pPeso: Double; pIdade: integer) : Double;
    function RetornaClassificacaoIMC(pIMC: Double; pIdade: integer): string;
  end;

implementation

end.
