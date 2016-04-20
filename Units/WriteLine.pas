// Common Tools library - Common function for working with Borland Pascal
// Copyright (c) 2016 Dorian Stoll
// Licensed under the terms of the MIT license

// Pascals built-in write and WriteLn functions are kinda lame,
// they don't have Unicode support and no standard support for colors,
// like for instance C# has. Lets make it a bit better.
unit writeline;

// Export the functions and add usings
interface
    uses colors;
    
    // Simple Write
    procedure Write(text : string); overload;
    procedure Write(text : integer); overload;
    procedure Write(text : real); overload;
    procedure Write(text : boolean); overload;

    // Write + Foreground Color
    procedure Write(text : string; color : TColor); overload;
    procedure Write(text : integer; color : TColor); overload;
    procedure Write(text : real; color : TColor); overload;
    procedure Write(text : boolean; color : TColor); overload;

    // Write + Foreground Color + Background Color
    procedure Write(text : string; color : TColor; bgcolor : TColor); overload; 
    procedure Write(text : integer; color : TColor; bgcolor : TColor); overload;
    procedure Write(text : real; color : TColor; bgcolor : TColor); overload;
    procedure Write(text : boolean; color : TColor; bgcolor : TColor); overload;

    // Simple WriteLn
    procedure WriteLn(text : string); overload;  
    procedure WriteLn(text : integer); overload;
    procedure WriteLn(text : real); overload;
    procedure WriteLn(text : boolean); overload;

    // WriteLn + Foreground Color
    procedure WriteLn(text : string; color : TColor); overload; 
    procedure WriteLn(text : integer; color : TColor); overload;
    procedure WriteLn(text : real; color : TColor); overload;
    procedure WriteLn(text : boolean; color : TColor); overload;

    // WriteLn + Foreground Color + Background Color
    procedure WriteLn(text : string; color : TColor; bgcolor : TColor); overload; 
    procedure WriteLn(text : integer; color : TColor; bgcolor : TColor); overload;
    procedure WriteLn(text : real; color : TColor; bgcolor : TColor); overload;
    procedure WriteLn(text : boolean; color : TColor; bgcolor : TColor); overload;
    
// Create their method bodies
implementation
    uses
        todos,
        Crt_D7;

    // Simple Write
    procedure Write(text : string);
    begin
        System.Write(ConvertToDos(text));
    end;
    procedure Write(text : integer);
    begin
        System.Write(text);
    end;
    procedure Write(text : real);
    begin
        System.Write(text);
    end;
    procedure Write(text : boolean);
    begin
        System.Write(text);
    end;

    // Write + Foreground Color
    procedure Write(text : string; color : TColor); overload;
    begin
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
    end;
    procedure Write(text : integer; color : TColor); overload;
    begin
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
    end;
    procedure Write(text : real; color : TColor); overload;
    begin
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
    end;
    procedure Write(text : boolean; color : TColor); overload;
    begin
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
    end;

    // Write + Foreground Color + Background Color
    procedure Write(text : string; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;
    procedure Write(text : integer; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;
    procedure Write(text : real; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;
    procedure Write(text : boolean; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        Write(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;

    // Simple WriteLn
    procedure WriteLn(text : string);
    begin
        System.WriteLn(ConvertToDos(text));
    end;
    procedure WriteLn(text : integer);
    begin
        System.WriteLn(text);
    end;
    procedure WriteLn(text : real);
    begin
        System.WriteLn(text);
    end;
    procedure WriteLn(text : boolean);
    begin
        System.WriteLn(text);
    end;

    // WriteLn + Foreground Color
    procedure WriteLn(text : string; color : TColor); overload;
    begin
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
    end;
    procedure WriteLn(text : integer; color : TColor); overload;
    begin
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
    end;
    procedure WriteLn(text : real; color : TColor); overload;
    begin
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
    end;
    procedure WriteLn(text : boolean; color : TColor); overload;
    begin
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
    end;

    // WriteLn + Foreground Color + Background Color
    procedure WriteLn(text : string; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;
    procedure WriteLn(text : integer; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;
    procedure WriteLn(text : real; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;
    procedure WriteLn(text : boolean; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(LightGray));
        textbackground(Ord(Black));
    end;

end.
