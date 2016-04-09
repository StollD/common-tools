// Common Tools library - Common function for working with Borland Pascal
// Copyright (c) 2016 Dorian Stoll
// Licensed under the terms of the MIT license

// Pascals built-in write and writeln functions are kinda lame,
// they don't have Unicode support and no standard support for colors,
// like for instance C# has. Lets make it a bit better.
unit write_;

// Export the functions and add usings
interface
    uses colors;
    procedure write(text : string); overload;
    procedure write(text : string; color : TColor); overload;
    procedure write(text : string; color : TColor; bgcolor : TColor); overload;
    procedure writeln(text : string); overload;
    procedure writeln(text : string; color : TColor); overload;
    procedure writeln(text : string; color : TColor; bgcolor : TColor); overload;
    
// Create their method bodies
implementation
    uses
        {$IFDEF MSWINDOWS}
        Windows,
        {$ENDIF}
        Crt_D7;
    procedure write(text : string);
    begin
        {$IFDEF MSWINDOWS}
        var ansistr : string;
        SetLength(ansistr, Length(text));
        CharToOEM(PChar(text), PChar(ansistr));
        System.Write(ansistr);
        {$ELSE}
        System.Write(text);
        {$ENDIF}
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
    procedure writeln(text : string);
    begin
        {$IFDEF MSWINDOWS}
        var ansistr : string;
        SetLength(ansistr, Length(text));
        CharToOEM(PChar(text), PChar(ansistr));
        System.WriteLn(ansistr);
        {$ELSE}
        System.WriteLn(text);
        {$ENDIF}
    end;
    procedure writeln(text : string; color : TColor); overload;
    begin
        textcolor(Ord(color));
        writeln(text);
        textcolor(Ord(White));
    end;
    procedure writeln(text : string; color : TColor; bgcolor : TColor); overload;
    begin
        textbackground(Ord(bgcolor));
        textcolor(Ord(color));
        writeln(text);
        textcolor(Ord(White));
        textbackground(Ord(Black));
    end;

end.