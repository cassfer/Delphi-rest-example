object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 289
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 120
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Solicita Rest'
    TabOrder = 1
    OnClick = Button3Click
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    OnAfterExecute = Message
    SynchronizedEvents = False
    Left = 328
    Top = 72
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br/ws/74477241/json'
    Params = <>
    Left = 328
    Top = 8
  end
end
