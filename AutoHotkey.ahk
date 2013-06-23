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

stop = 0

#s::
If stop = 0
  {
   stop = 1
   return
  }
If stop = 1
  {
    stop = 0
    return
  }

#a::
    Loop, 2330
    {
        If stop = 1
            Break

        dir()
        delete()      
        open()
    }
    return

#d::
    dir() 
    delete()     
    open()
    return

dir()
{
;開資料夾
    Click 1332, 48
    sleep, 1000
}

delete()
{
;選第一個
    Click 299, 160
;刪除
    Send {Del}
    sleep, 300    
;確認刪除
    Send {Enter}
    sleep, 300
}

open()
{
;選第一個
    Click 299, 160
;重新命名
    Send {F2}
;複製
    Clipboard = 
    Send ^c
    ClipWait
    name = %Clipboard%
;複製完畢
    Send {Esc}   
;開
    Send {Enter}
    sleep, 1000
;播
    Click 1355, 43
;結束
    Click 1402, 43
;開snipping
    Click 96, 1067
    sleep, 1000
;拉圖
    MouseClickDrag, left, -540, -428, 1299, 992    
    sleep, 1000
;存檔
    Send ^s
    sleep, 1000
;貼上
    Clipboard = %name%
    Send ^v
;存檔確認
    Send {Enter}
    sleep, 300
;關閉
    Send !f
    sleep, 300
    Send x
    sleep, 1000
}


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
