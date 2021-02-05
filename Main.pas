///////////////////////////////////////////////////
///////          2D Движок      ///////////////////
///////////////////////////////////////////////////

uses 
    ABCObjects,GraphABC,sprites,Timers,resurce;
var 
    I:integer;
    box,fon,ast: picture;
    Time:timer;
    X,R,S:integer;
    p,m:Player;
    
procedure DrawScene();
begin
    X:=X+2;
    R:=R+5;
    S:=S+2;
    
    LockDrawing;
    window.Clear; 
  
    fon.Draw(0,0,window.Width,window.Height);
    box.Draw(p.x,p.y,50,50);
    ast.Draw(X,300,100,100);
    ast.Draw(m.x-50,m.y-50,100,100);
    
    font.Size:=30;
    if (X>20) and (X<40) then    textOut(200,200,'текст');
    font.Size:=10;    
    textOut(10,10,'2D engine');
    redraw;

end;  

begin
    //OnMouseDown := MouseDown;   
    OnkeyDown:=KeyDown;  
    OnMouseMove := MouseMove;
    window.Caption:='progekt 1';
    window.Width:=800;
    window.Height:=600;
    res_Load;


    
    Time:=Timer.Create(50,DrawScene);
    Time.Start;  
end.