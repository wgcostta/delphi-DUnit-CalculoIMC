unit Cloud.Teste.Unitario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtPeso: TEdit;
    edtIdade: TEdit;
    edtAltura: TEdit;
    btnCalcular: TButton;
    lblResultado: TLabel;
    lblPeso: TLabel;
    lblIdade: TLabel;
    lblAltura: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure edtAlturaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesoKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtIdadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAlturaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Cloud.Avaliacao;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
   dValorMC : Double;
begin
//   TAvaliacao
//        .New
//        .SetIdade(edtIdade.Text)
//        .setpeso(edtPeso.Text)
//        .SetAltura(edtAltura.Text)
//        .ClassificacaoIMC;

   dValorMC := TAvaliacao
                .New
                .CalculaIMC(StrToCurr(edtAltura.Text),StrToCurr(edtPeso.Text));

   lblResultado.Caption := 'Resultado: ' +
   TAvaliacao
        .New
        .ClassificacaoIMC(dValorMC,StrToInt(edtIdade.Text));
end;

procedure TForm1.edtAlturaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm1.edtAlturaKeyPress(Sender: TObject; var Key: Char);
begin
  If not( key in['0'..'9',',',#08] ) then
  begin
    beep;
    key:=#0;
  end;
end;

procedure TForm1.edtIdadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm1.edtPesoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm1.edtPesoKeyPress(Sender: TObject; var Key: Char);
begin
  If not( key in['0'..'9',',',#08] ) then
  begin
    beep;
    key:=#0;
  end;
//    {se alguma das teclas abaixo for precionada}
//   if ( Key In ['A'..'Z', 'a'..'z', '@','!','#','$', '%','^',
//   '&','`','~','*','(',')','-','_','=','+','|','','/','<','>',
//   '"',';',':','[',']','{','}',''''  ]) then   {entao}
//   begin
//      KEY := #0; //retorna 'null' como c nada fosse precionado
//   end;
end;

end.


