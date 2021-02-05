unit resurce;

interface
uses
  GraphABC,ABCObjects,sprites;

Type
  Player = record
    x,y,sx,sy:integer;
  end;

//////----------------****************************************************---------------------------////
procedure Res_Load();
procedure MouseMove(x,y,mb: integer);
procedure KeyDown(Key:integer);
//////----------------****************************************************---------------------------////

implementation
uses Main;
{procedure MouseDown(x,y,mb: integer);
begin
  MoveTo(x,y);
end;}
  
  procedure KeyDown(Key:integer);
  begin
    case Key of
        VK_Left:  p.x-=5;
        VK_Right: p.x+=5;
        VK_Up:    p.y-=5;
        VK_Down:  p.y+=5;
    end;   
  end; 



procedure MouseMove(x,y,mb: integer);
begin
  //if mb=1 then LineTo(x,y);
  m.x:=x;
  m.y:=y;
end;

procedure Res_Load();
begin
    box:=Sprite_load('data\box.png');
    fon:=Sprite_load('data\fon.png');
    ast:=Sprite_load('data\asteroid.png');    
    
    
end;


end.