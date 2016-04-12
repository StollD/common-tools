// Common Tools library - Common function for working with Borland Pascal
// Copyright (c) 2016 Dorian Stoll
// Licensed under the terms of the MIT license

// Pascals built-in write and WriteLn functions are kinda lame,
// they don't have Unicode support and no standard support for colors,
// like for instance C# has. Lets make it a bit better.
unit write_;

// Export the functions and add usings
interface
    uses colors;
    procedure Write(text : string); overload;
    procedure Write(text : string; color : TColor); overload;
    procedure Write(text : string; color : TColor; bgcolor : TColor); overload;
    procedure WriteLn(text : string); overload;
    procedure WriteLn(text : string; color : TColor); overload;
    procedure WriteLn(text : string; color : TColor; bgcolor : TColor); overload;
    
// Create their method bodies
implementation
    uses
        todos,
        Crt_D7;
    procedure write(text : string);
    begin
        System.Write(ConvertToDos(text));
    end;
    procedure write(text : string; color : TColor); overload;
    begin
        textcolor(Ord(color));
        write(text);
        textcolor(Ord(White));
    end;
    procedure write(text : string; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        write(text);
        textcolor(Ord(White));
        textbackground(Ord(Black));
    end;
    procedure WriteLn(text : string);
    begin
        System.WriteLn(ConvertToDos(text));
    end;
    procedure WriteLn(text : string; color : TColor); overload;
    begin
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(White));
    end;
    procedure WriteLn(text : string; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        WriteLn(text);
        textcolor(Ord(White));
        textbackground(Ord(Black));
    end;

end.