// Common Tools library - Common function for working with Borland Pascal
// Copyright (c) 2016 Dorian Stoll
// Licensed under the terms of the MIT license

// Make the readline function a bit more intuitive to use
// and add a prompt functionality for it.
unit readline;

interface
    uses colors;

    // ReadLn overrides
    function ReadLn() : string; overload;
    function ReadLn(prompt : string) : string; overload;
    function ReadLn(prompt : string; color : TColor) : string; overload;
    function ReadLn(prompt : string; color : TColor; bgcolor : TColor) : string; overload;

implementation
    uses writeline;

    // Simple ReadLn
    function ReadLn() : string; overload;
    var input : string;
    begin
        System.Readln(input);
        Result := input;
    end;

    // ReadLn with prompt
    function ReadLn(prompt : string) : string; overload;
    begin
        Write(prompt);
        Result := ReadLn;
    end;

    // ReadLn with prompt and foreground color
    function ReadLn(prompt : string; color : TColor) : string; overload;
    begin
        Write(prompt, color);
        Result := ReadLn;
    end;

    // ReadLn with prompt, foreground and background color
    function ReadLn(prompt : string; color : TColor; bgcolor : TColor) : string; overload;
    begin
        Write(prompt, color, bgcolor);
        Result := ReadLn;
    end;

