unit sprites;

interface
uses
  GraphABC,ABCObjects;



//////----------------****************************************************---------------------------////
procedure Sprite(x,y:integer;  texture: picture);

//////----------------****************************************************---------------------------////

implementation
uses Main;

procedure Sprite(x,y:integer;  texture: picture);
begin
texture.Draw(X,Y);
end;


end.