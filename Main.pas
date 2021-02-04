///////////////////////////////////////////////////
///////          2D Движок      ///////////////////
///////////////////////////////////////////////////

uses 
    ABCObjects,GraphABC,sprites,Timers;
var 
    I:integer;
    box: picture;
    Time:timer;
    X:integer;
    
procedure DrawScene();
begin
    X:=X+2;
    LockDrawing;
    window.Clear;    
    sprite(X,   50,box); 
    sprite(X*2,100,box);     
    sprite(X*3,150,box); 
    font.Size:=30;
    if (X>20) and (X<40) then    textOut(200,200,'Lets GO!!!');
    font.Size:=10;    
    textOut(10,10,'hellow world');
    redraw;

end;    
    
    
begin
    window.Caption:='Engine';
    window.Width:=800;
    window.Height:=600;
    writeln('Hellow world!');
    box:=Picture.Create('data\box.png');
    box.Load('data\box.png');  
    Time:=Timer.Create(100,DrawScene);
    Time.Start;  
end.