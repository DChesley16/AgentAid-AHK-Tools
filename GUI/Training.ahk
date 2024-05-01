#Requires AutoHotkey v2.0
#SingleInstance Force

^1::{
Train := Gui()
Train.Opt("+ Resize +Border -DPIScale")
Train.Title := "Train"
Train.AddProgress("x0 y0 w1000 h50 Background0400ff +Center Disabled")


Train.SetFont("Bold s15")
Train.AddText("x0 y10 w1000 h40 +BackgroundTrans c000000 +Center", "AgentAid Tools")

Train.SetFont("Norm s12")
Section := Train.AddTab3("x3 y50 w997 h935 +0x100 +0x40", ["Intro", "Five9 DID's", "Communication Tasks", "Final Thoughts"])

Section.UseTab(1)
    Train.SetFont("Norm s12 cBlack")
        Train.AddText("x10 y85 w985 +Wrap", "Hey " A_UserName ",`n`nI am excited that you decided to check out AgentAid!`n`nBefore we start this training I would like to go over the legend with you. If you look below, you will notice a set of keys. When those are pressed together, a generated user interface (GUI) will show up on your laptop screen. This is the legend.")

        Train.AddHotkey("x385 y275 Disabled vLegendHK", "^+/")

    Train.SetFont("Bold s12 cc50000")
        Train.AddText("x10 y350", "Legend")
    
    Train.SetFont("Norm s12 cBlack")
        Train.AddText("x10 y400 w985 +Wrap", "The legend will be extremely helpful during the first few weeks of using AgentAid. This will tell you all of the hotkeys and shortcuts that AgentAid uses to make your job easier. At anytime, you can press those keys and the legend will be there at your disposal!`n`nThe legend had 3 tabs; Five9, IB Tasks and OB Tasks.`n`nFive9: The Five9 tab will list all of the shortcuts for Five9 DID's. On the left side, colored yellow, we have every department name that we transfer too. On the right, in white, we have the shortcut that will be used in the number box on Five9.`n`nIB Tasks: The IB Tasks tab will list all of your shortcuts for inbound successful transfer communication tasks. On the left side colored yellow, we have the outcome of the shortcut. On the right side is the actual shortcut. You will type exactly what you see into the communication task comment box. This is the same for OB Tasks tab.`n`nOther: The other tab will have all the extra features that come with the tool. This includes a communication task for not interested and general information. (We will get to those soon).`n`nFor now, lets go over some examples.")

        Train.SetFont("Bold s12 cc50000")
            Train.AddText("x10 y350", "Legend")


Train.Show("Center w1000 h975")

}
