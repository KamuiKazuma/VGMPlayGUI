/'
    
    WinAPICheck.bas
    
    Simple checking functions for Windows API.
    
    Copyright (c) 2018 Lisa Murray
    
    Compile with:
        fbc -lib "WinAPICheck.bas"
    
'/

''check the compiler output type
#If __FB_OUT_LIB__ = 0
#Error "This file must be compiled as a static library."
#EndIf

#Print Compiling "WinAPICheck.bas"

''show if 32- or 64-bit target
#Ifdef __FB_64BIT__
#Print "Compiling for 64-bit Windows."
#Else
#Print "Compiling for 32-bit Windows."
#EndIf

''include header
#Include "../inc/winapicheck.bi"

Public Function CheckLongErrCode (ByVal lCode As LONG32) As BOOL
    SetLastError(Cast(DWORD32, lCode))
    If (lCode = ERROR_SUCCESS) Then
        Return(TRUE)
    Else
        Return(FALSE)
    End If
End Function

Public Function CheckHandle (ByVal hRef As HANDLE) As BOOL
    If (hRef = INVALID_HANDLE_VALUE) Then
        SetLastError(ERROR_INVALID_HANDLE)
        Return(FALSE)
    Else
        SetLastError(ERROR_SUCCESS)
        Return(TRUE)
    End If
End Function

Public Function CheckAlloc (ByVal lpItem As LPCVOID) As BOOL
    If (lpItem = NULL) Then
        SetLastError(ERROR_OUTOFMEMORY)
        Return(FALSE)
    Else
        SetLastError(ERROR_SUCCESS)
        Return(TRUE)
    End If
End Function

''EOF
