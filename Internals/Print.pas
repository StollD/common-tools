// Common Tools library - Common function for working with Borland Pascal
// Copyright (c) 2016 Dorian Stoll
// Licensed under the terms of the MIT license

// Because we overwrite the write and writeln functions,
// we need an adapter to the pascal standard implementations
// since I don't want to interface with the Win32 console myself.
unit print;

// Export the functions
interface
    procedure internal_print_(text : string);
    procedure internal_println_(text : string);

// Create their method bodies
implementation
    uses
      sysutils;
    procedure internal_print_(text : string);
    begin
        write(text);
    end;
    procedure internal_println_(text : string);
    begin
        writeln(text);
    end;

end.
