#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=00000409)  ---

#region --- Internal functions Au3Recorder Start ---
Func _Au3RecordSetup()
Opt('WinWaitDelay',100)
Opt('WinDetectHiddenText',1)
Opt('MouseCoordMode',0)
Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
If $aResult[1] <> '00000409' Then
  MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(00000409->' & $aResult[1] & ')')
EndIf

EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

Global $Paused, $Runner
HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("!x", "TogglePause")
HotKeySet("{ESC}", "Terminate")
HotKeySet("!z", "Terminate")
HotKeySet("{F9}", "ShowMe")

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---

For $counter1 = 1 to 10
	_WinWaitActivate("Mergest Kingdom 🕹️ Play on CrazyGames","")
	MouseClick("left",1898,812,1)
	Sleep(2500)
	MouseClick("left",1396,656,1)
	Sleep(1000)
	MouseClick("left",1396,656,1)
	Sleep(3000)
Next

_WinWaitActivate("Mergest Kingdom 🕹️ Play on CrazyGames","")
MouseClick("left",2442,134,1)
#endregion --- Au3Recorder generated code End ---

Func TogglePause()
 $Paused = NOT $Paused
 While $Paused
  sleep(100)
  ToolTip('Script is "Paused"',0,0)
 WEnd
 ToolTip("")
EndFunc

Func Terminate()
 ToolTip('Script was "Terminated"',0,0)
 Sleep(500)
 Exit 0
EndFunc

Func ShowMe()
 $Runner = NOT $Runner
 While $Runner
  sleep(100)
  ToolTip('Script is "Running"',0,0)
 WEnd
 ToolTip("Script is Stopped", 0, 0)
EndFunc