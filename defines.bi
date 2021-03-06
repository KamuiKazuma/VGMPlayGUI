/'
    
    defines.bi
    
    Defines for VGMPlayGUI
    
    Copyright (c) 2018-2019 Kazusoft Co.
    
'/

#Pragma Once
#Print "Including ""defines.bi""."
#Include "inc/resource-defines.bi"

''defines
#Define MARGIN_SIZE                 &h0000000A ''(10) distance between adjacent controls
#Define WINDOW_SIZE                 &h0000001E ''(30) minimum window length/width
#Define MIN_SIZE_X                  &h000001C2 ''450
#Define MIN_SIZE_Y                  &h00000190 ''400

/'  For some reason, DWL_MSGRESULT isn't defined in FreeBASIC v1.05.0's
    64-bit Windows headers, as this may be fixed in future versions, only
    define this if it isn't already
'/
#Ifndef DWL_MSGRESULT
    #Define DWL_MSGRESULT           &h00000000 ''0
#EndIf

''IDs for valid file types
#Define FTYPE_INVALID   &h00
#Define FTYPE_VGM       &h01
#Define FTYPE_VGZ       &h02
#Define FTYPE_CMF       &h03
#Define FTYPE_DRO       &h04
#Define FTYPE_M3U       &h05

''IDs for plpszPaths
#Define CCH_PATH                    MAX_PATH
#Define CB_PATH                     Cast(SIZE_T, (CCH_PATH * SizeOf(TCHAR)))
#Define C_PATH                      &h00000002 ''2
#Define PATH_VGMPLAY                &h00000000 ''0
#Define PATH_DEFAULT                &h00000001 ''1

''app name sizes
#Define CCH_APPNAME                 &h00000040 ''64
#Define CB_APPNAME                  Cast(SIZE_T, (CCH_APPNAME * SizeOf(TCHAR)))

''IDs and sizes for the about message
#Define CCH_ABT                     &h00000400 ''1024
#Define CB_ABT                      Cast(SIZE_T, (CCH_ABT * SizeOf(TCHAR)))
#Define C_ABT                       &h00000002 ''2
#Define ABT_DESCRIPTION             &h00000000 ''0
#Define ABT_LEGAL                   &h00000001 ''1

''IDs for context menus
#Define MEN_DRIVES                  &h00000000 ''0
#Define MEN_MAINLIST                &h00000001 ''1

''EOF
