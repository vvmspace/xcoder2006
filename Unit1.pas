unit Unit1;

interface

uses
  Windows, {Messages,} SysUtils,{ Variants,} {Classes,} Controls, Forms,
  Dialogs, StdCtrls, Mask, ComCtrls, inifiles, ExtCtrls, Classes, unit2;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
    Op: TOpenDialog;
    Sa: TSaveDialog;
    Label1: TLabel;
    Label3: TLabel;
    Opd: TOpenDialog;
    Sad: TSaveDialog;
    StatusBar1: TStatusBar;
    Label4: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xn:integer;
  Form1: TForm1;
  sse, se, mi, ho:integer;
  cnc: boolean;
  stt: string;
  sh: string;
  procedure Coding(InputFile:string; OutputFile:String;password:String; CodeDecode:integer);

implementation
{$R *.dfm}
procedure Coding(InputFile:string; OutputFile:String;password:String; CodeDecode:integer);
var i,o:file of byte;
    b:byte;
    j,k, kr,pm, ib:integer;
    S:string;
    per:integer;
begin
j:=1;
s:=password;
  if s='' then begin
    s:='password';
  end;
  assignfile(i, InputFile);
  reset(i);
  assignfile(o, OutputFile);
  begin
    rewrite(o);
    form1.button3.caption:='������';
    cnc:=false;
 while not (eof(i) or cnc) do
 begin
  application.ProcessMessages;
  per:=strtoint(floattostr(int((filesize(o)/filesize(i))*100)));
//  label4.Caption:=floattostr(per)+'%';
  form1.progressbar1.Position:=per;
if codedecode=1 then  form1.statusbar1.SimpleText:='���� ���������������...  ' + inttostr(per)+'% ::: ' + stt else form1.statusbar1.SimpleText:='���� ����������������...  ' + inttostr(per)+'% ::: '+ stt ;
  read(i,b);
  ib:=b;
  j:=j+1;
  pm:=(-1);
  for kr:=1 to j do
  begin
  pm:=pm*(-1);
  end;
  k:=ord(s[j])*pm;
  if (j>length(S)) then j:=1;
  ib:=ib+k*codedecode;
  if (ib > 255) then ib:=ib-256;
  if (ib < 0) then ib:=ib+256;
  b:=ib;
  write(o,b);
  end;
    form1.button3.caption:='�������';
  closefile(o);
  closefile(i);
if cnc then begin
  assignfile(o,outputfile);
  erase(o);
end;
end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
sh:='���� ����������';
se:=0;
sse:=0;
mi:=0;
ho:=0;
timer1.Enabled:=true;
if maskedit1.text='' then
begin
  ShowMessage('���������� ������� ������');
end
else
begin
if op.Execute then if sa.Execute then coding(op.FileName, sa.FileName, MaskEdit1.Text, 1);
 statusbar1.SimpleText:=sh;
end;
end;{ DeCoding }
procedure TForm1.Button2Click(Sender: TObject);
begin
sh:='���� �����������';
se:=0;
sse:=0;
mi:=0;
ho:=0;
timer1.Enabled:=true;
if maskedit1.text='' then
begin
  ShowMessage('���������� ������� ������');
end
else
begin
if opd.Execute then if sad.Execute then coding(opd.FileName, sad.FileName, MaskEdit1.Text, -1);
 statusbar1.SimpleText:=sh;
 timer1.Enabled:=false;
end;

end;
procedure TForm1.Label4Click(Sender: TObject);
begin
Showmessage('X-Coder ***   2006' + chr(13) +'������� ������'+ chr(13)+'�����: ������� ��������'+ chr(13) +'<TheSteelRat@mail.ru>'+ chr(13) +  '������� "�����������", ����� ����������� ����' + chr(13) + '������� "������������", ����� ������������ ����' );
end;


procedure TForm1.Label5Click(Sender: TObject);
begin
if maskedit1.text='' then
begin
  ShowMessage('Please write password');
end
else
begin
if opd.Execute then if sad.Execute then coding(opd.FileName, sad.FileName, MaskEdit1.Text, -1);
 statusbar1.SimpleText:='File Decoded';
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var x:textfile;
begin
assignfile(x,'C:\time.txt');
rewrite(x);
stt:=inttostr(ho)+':'+inttostr(mi)+':'+inttostr(se) + ','+ inttostr(sse);
write(x, stt);
 sse:=sse+1;
 if sse=100 then
 begin
  sse:=0;
  se:=se+1;
  if se=60 then
  begin
   se:=0;
   mi:=mi+1;
   if mi=60 then
   begin
    mi:=0;
    ho:=ho+1;
   end;
  end;
 end;
closefile(x);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if button3.caption='������' then
begin
 cnc:=true;
 sh:='�������� ������� �������������';
 progressbar1.Position:=0;
end;
if button3.caption='�������' then form1.close;
end;

procedure TForm1.FormActivate(Sender: TObject);
var pas: string;
begin
if (paramcount>0) and (xn<1) then
begin
 form2.Showmodal;
 xn:=xn+1;
  if form2.PWord.Text = '' then close else pas:=form2.PWord.Text;
  if sad.Execute then
  begin
  coding(paramstr(1), sad.FileName, pas, -1);
  showmessage('������� ��������');
  Progressbar1.Position:=0;
  statusbar1.SimpleText:='';
  end;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
xn:=0;
end;

end.
