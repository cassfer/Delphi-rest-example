unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, REST.Types;

type
  TForm1 = class(TForm)
    Button2: TButton;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Message(Sender: TCustomRESTRequest);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(Edit1.text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  RESTRequest1.Execute;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form1 := nil;
end;

procedure TForm1.Message(Sender: TCustomRESTRequest);
begin
  showMessage(RESTRequest1.Response.JSONText)
end;

end.
