unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, UTrieTree, Spin;

type
  TMainForm = class(TForm)
    inputEdt: TEdit;
    fillTreeBtn: TButton;
    findFormsBtn: TButton;
    grp1: TGroupBox;
    treeView: TTreeView;
    grp2: TGroupBox;
    resultMmo: TMemo;
    formSe: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure fillTreeBtnClick(Sender: TObject);
    procedure findFormsBtnClick(Sender: TObject);
    procedure inputEdtChange(Sender: TObject);
    procedure inputEdtKeyPress(Sender: TObject; var Key: Char);
  private
    tree: TTrieTree;
    function getInput: String;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  tree := TTrieTree.Create();
end;

procedure TMainForm.fillTreeBtnClick(Sender: TObject);
var
  input: String;
begin
  input := getInput;
  tree.push(input);
  tree.print(treeView);
  inputEdt.Clear;
end;


procedure TMainForm.findFormsBtnClick(Sender: TObject);
var
  Number_OF_Consonants: integer;
begin
  Number_OF_Consonants:=formSe.Value;
  resultMmo.Lines := tree.GetWords(Number_OF_Consonants);
end;


function TMainForm.getInput: String;
begin
  result:= inputEdt.Text;
end;

procedure TMainForm.inputEdtChange(Sender: TObject);
begin
  formSe.MaxValue := Length(Trim(inputEdt.Text));
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  tree.Free;
end;

procedure TMainForm.inputEdtKeyPress(Sender: TObject; var Key: Char);
begin
  if (key >=' ') and ((Key<'a') or (Key>'z')) then
    key := #0;
end;

end.
