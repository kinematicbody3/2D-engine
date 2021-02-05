unit sprites;

interface
uses
  GraphABC,ABCObjects;



//////----------------****************************************************---------------------------////

function Sprite_Load(put:string):picture;

//////----------------****************************************************---------------------------////

implementation
uses Main,resurce;



function Sprite_Load(put:string):picture;
var
  p:picture;
begin
    p:=Picture.Create(put);
    p.Load(put);
    result:=p;
end;


end.