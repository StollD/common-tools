// Common Tools library - Common function for working with Borland Pascal
// Copyright (c) 2016 Dorian Stoll
// Licensed under the terms of the MIT license

// Converts an UTF-8 string into it's MS-DOS ANSI representation
unit todos;

// Export the functions
interface
	function ConvertToDos(input : string) : string;

// Create their method bodies
implementation
	{$IFDEF MSWINDOWS}
	uses Windows;
	{$ENDIF}
	function ConvertToDos(input : string) : string;   
	var ansistr : string;
	begin
    {$IFDEF MSWINDOWS}
        if not input = '' then
        begin
            SetLength(ansistr, Length(text));
            CharToOEM(PChar(text), PChar(ansistr));
            Result := ansistr;
        end;
        else
            Result := input;
    {$ELSE}
		Result := input;
    {$ENDIF}
	end;
	
end.
