;
; MonitorTest
; Copyright 2023, Rafael Nigmatullin
; Released under the MIT License
; https://github.com/kuvalda4g/MonitorTest
;

color_index.b = 0
Dim colors(9)
colors(0) = #White
colors(1) = #Gray
colors(2) = #Black
colors(3) = #Red
colors(4) = #Green
colors(5) = #Blue
colors(6) = #Cyan
colors(7) = RGB(128, 0, 128) ; purple
colors(8) = #Yellow

If OpenWindow(0, 0, 0, 1, 1, "MonitorTest", #PB_Window_BorderLess | #PB_Window_Maximize)
  SetWindowColor(0, #White)

  Repeat
    Event = WaitWindowEvent()

    If Event = #PB_Event_LeftClick ; change color
      color_index + 1
      If color_index > 8
        color_index = 0
      EndIf
      SetWindowColor(0, colors(color_index))
    EndIf

    If Event = #PB_Event_RightClick ; exit
      Quit = 1
    EndIf

  Until Quit = 1

EndIf

End

; IDE Options = PureBasic 6.02 LTS (Windows - x64)
; CursorPosition = 12
; EnableXP
; DPIAware
; UseIcon = icon.ico
; Executable = MonitorTest.exe
; IncludeVersionInfo
; VersionField0 = 23.9.18.1
; VersionField3 = MonitorTest
; VersionField9 = Rafael Nigmatullin