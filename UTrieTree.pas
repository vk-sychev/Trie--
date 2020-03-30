unit UTrieTree;

interface
uses
  UTrieNode, Classes,ComCtrls;
type
	TTrieTree = class
		private
			root: TNode;
		public
			constructor Create;
			procedure push(s :string);
			function GetWords(n: integer): TStrings;
      procedure print(treeView:TTreeView);
      destructor Destroy; override;
	end;

implementation

constructor TTrieTree.Create;
begin
	inherited;
	root := TNode.Create;
end;

procedure TTrieTree.push(s: string);
begin
	if s<>'' then
    root.push(s);
end;

function TTrieTree.GetWords(n: integer): TStrings;
begin
  result := TStringList.Create;
  root.GetWord(n, '', result);
end;

procedure TTrieTree.print(treeView:TTreeView);
begin
  treeView.Items.Clear;
  root.print(treeView, nil);
end;

destructor TTrieTree.Destroy;
begin
  root.Free;
  inherited;
end;

end.

