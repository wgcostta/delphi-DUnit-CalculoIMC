unit Cloud.DUnit.Test;

interface
uses
  DUnitX.TestFramework,
  Cloud.Avaliacao;

type

  [TestFixture]
  TestTAvaliacao = class(TObject)
  strict private
      FAvaliacao: TAvaliacao;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);

   [TestCase('Test01','19,17,Não disponível')]
   [TestCase('Test02','18,18,Abaixo do Peso')]
   [TestCase('Test03','22,22,Peso Normal')]
   [TestCase('Test04','25,35,Sobrepeso')]
   [TestCase('Test05','30,35,Obesidade I')]
   [TestCase('Test06','39,59,Obesidade II')]
   [TestCase('Test07','40,59,Obesidade III')]
   [TestCase('Test08','21,60,Abaixo do Peso')]
   [TestCase('Test09','22,60,Peso Normal')]
   [TestCase('Test10','27,60,Acima do Peso')]
   procedure TestRetornaClassificacaoIMC2(pIMC: Currency; pIdade: Integer; _Result: string);
  end;

implementation

procedure TestTAvaliacao.Setup;
begin
end;

procedure TestTAvaliacao.TearDown;
begin
end;

procedure TestTAvaliacao.Test1;
begin
end;

procedure TestTAvaliacao.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;

procedure TestTAvaliacao.TestRetornaClassificacaoIMC2(pIMC: Currency;
  pIdade: Integer; _Result: string);
 var
   R: string;
begin
   R := TAvaliacao.New.RetornaClassificacaoIMC(pIMC,pIdade);
   Assert.AreEqual(_Result, R);
end;

initialization
  TDUnitX.RegisterTestFixture(TestTAvaliacao);
end.
