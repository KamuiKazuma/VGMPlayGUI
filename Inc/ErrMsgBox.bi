/'
    
    ErrMsgBox.bi
    
    Error Message Box Library Header
    
    Copyright (c) 2018 Kazusoft Co.
    
'/

#Pragma Once

#If __FB_OUT_EXE__
#Print "Including ErrMsgBox"
#Inclib "errmsgbox"
#EndIf

''check target OS
#Ifndef __FB_WIN32__
#Error "Target OS must be Windows"
#EndIf

''include windows header
#Include Once "windows.bi"

Declare Function SysErrMsgBox (ByVal hDlg As HWND, ByVal dwErrorId As DWORD32, ByVal pdwArgs As PDWORD32) As DWORD32
Declare Function ProgMsgBox (ByVal hInst As HINSTANCE, ByVal hDlg As HWND, ByVal wTextId As WORD, ByVal wCaptionId As WORD, ByVal dwStyle As DWORD32) As DWORD32

''EOF
