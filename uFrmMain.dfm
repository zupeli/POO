object FrmExemplo: TFrmExemplo
  Left = 0
  Top = 0
  Caption = 'Exemplo POO'
  ClientHeight = 283
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 465
    Height = 121
    Caption = 'Carro'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 169
      Top = 24
      Width = 62
      Height = 15
      Caption = 'Capacidade'
    end
    object Label3: TLabel
      Left = 272
      Top = 24
      Width = 84
      Height = 15
      Caption = 'Quilometragem'
    end
    object edDescCarro: TEdit
      Left = 24
      Top = 40
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'CIVIC'
    end
    object edCapCarro: TEdit
      Left = 168
      Top = 40
      Width = 81
      Height = 23
      NumbersOnly = True
      TabOrder = 1
      Text = '4'
    end
    object edQuilometragem: TEdit
      Left = 272
      Top = 40
      Width = 97
      Height = 23
      NumbersOnly = True
      TabOrder = 2
      Text = '2000'
    end
    object btCriarCarro: TButton
      Left = 24
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 3
      OnClick = btCriarCarroClick
    end
    object btLiberarCarro: TButton
      Left = 120
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Liberar'
      TabOrder = 4
      OnClick = btLiberarCarroClick
    end
    object btMover: TButton
      Left = 221
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Mover'
      Enabled = False
      TabOrder = 5
      OnClick = btMoverClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 127
    Width = 465
    Height = 121
    Caption = 'Avi'#227'o'
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 24
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object Label5: TLabel
      Left = 169
      Top = 24
      Width = 62
      Height = 15
      Caption = 'Capacidade'
    end
    object Label6: TLabel
      Left = 272
      Top = 24
      Width = 84
      Height = 15
      Caption = 'Quilometragem'
    end
    object edDescAviao: TEdit
      Left = 24
      Top = 40
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'AMX A-1'
    end
    object edCapAviao: TEdit
      Left = 168
      Top = 40
      Width = 81
      Height = 23
      NumbersOnly = True
      TabOrder = 1
      Text = '2'
    end
    object edHoraVoo: TEdit
      Left = 272
      Top = 40
      Width = 97
      Height = 23
      NumbersOnly = True
      TabOrder = 2
      Text = '5000'
    end
    object btCriarAviao: TButton
      Left = 24
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 3
      OnClick = btCriarAviaoClick
    end
    object btLiberarAviao: TButton
      Left = 120
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Liberar'
      TabOrder = 4
      OnClick = btLiberarAviaoClick
    end
    object btMoverAviao: TButton
      Left = 221
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Mover'
      Enabled = False
      TabOrder = 5
      OnClick = btMoverAviaoClick
    end
  end
  object btSair: TButton
    Left = 400
    Top = 254
    Width = 73
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btSairClick
  end
end
