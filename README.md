# common-tools
Common Pascal functions for our informatics lessons at school.

### Installation
To use the common-tools library, download the zipball into your delphi project folder. I have tested this with Delphi 7, since we use that at school, but I might port it to Lazarus / FreePascal too.
After downloading the source code, you have to enter the following into your project file:
```uses
  SysUtils
  {$IFNDEF COMMON-TOOLS},
  {$INCLUDE common-tools/CommonTools.pas};
  {$ELSE};
  {$ENDIF}```
Make sure that you don't put any other units behind the common-tools import in the uses statement, and that you don't have a closing , or ;. Otherwise, the compiler won't be able to load common-tools!

### License
Do what you want, but credit me (MIT)
