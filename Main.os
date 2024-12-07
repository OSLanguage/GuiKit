Library GuiKit
  set "prepared" = false
  set "boxWidth" = 0
  set "boxHeight" = 0
  set "text" = ""

Command prepare()
    set "prepared" = true
    Show("GuiKit: Environment prepared.")

  Command displayBox(width, height)
    if prepared == false
      Show("GuiKit Error: Prepare the environment before displaying a box.")
      return
    end
    set "boxWidth" = width
    set "boxHeight" = height
    Show("GuiKit: Displaying a box of size " + width + "x" + height + ".")
  End

  Command addText(inputText)
    if boxWidth == 0 or boxHeight == 0
      Show("GuiKit Error: Display a box before adding text.")
      return
    end
    set "text" = inputText
    Show("GuiKit: Adding text to the GUI - '" + inputText + "'.")
  End
End
