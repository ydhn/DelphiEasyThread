object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'EasyThread'
  ClientHeight = 224
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 30
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 530
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 28
      Align = alLeft
      Caption = '&Fetch'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 0
      ExplicitTop = -1
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 30
    Width = 536
    Height = 194
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    ExplicitLeft = 192
    ExplicitTop = 160
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 448
    Top = 8
  end
end
