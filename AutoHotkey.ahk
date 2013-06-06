; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

#a::
    new()
    return
#s::
    open()
    return

open()
{
    Send {Enter}
    sleep, 100
    Send !{F4}
    sleep, 100
    Click 1322, 35
    sleep, 100
    MouseMove 646, 360
}


new()
{
    Click 1346, 33
    Click 1396, 33
    Click 709, 1061
    sleep, 1000
    MouseClickDrag, left, -540, -428, 1299, 992    
    sleep, 300
    Send ^s
    sleep, 300
    Send 2012
}


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
