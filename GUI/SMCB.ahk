#Requires Autohotkey v2
#SingleInstance Force

>^numpad0:: {
	myGui := Gui()
	myGui.OnEvent("Size", GuiSize)
	myGui.SetFont("s12 cBlack")
	myGui.BackColor := "0x000080"
	myGui.Title := "Schedule Callback Template"
	myGui.Show("w410 h491")


	myGui.Add("Text", "x16 y8 w386 h74 cWhite", "Fill out this form to get a pre-filled copy of the Manual Callback Template. Then paste the template into an event on the MCB calendar.")

	myGui.Add("Text", "x24 y96 w69 h23 cWhite", "Name:")
	myGui.Add("Text", "x24 y144 w65 h23 cWhite", "Number:")
	myGui.Add("Text", "x24 y192 w65 h23 cWhite", "Date:")
	myGui.Add("Text", "x24 y240 w65 h23 cWhite", "Time:")
	myGui.Add("Text", "x24 y288 w65 h23 cWhite", "Notes:")

	EditName := myGui.Add("Edit", "x96 y96 w158 h25")
	EditNumber := myGui.Add("Edit", "x96 y144 w160 h25")
	EditDate := myGui.Add("Edit", "x96 y192 w161 h25")
	EditTime := myGui.Add("Edit", "x96 y240 w161 h25")
	EditNotes := myGui.Add("Edit", "x96 y288 w282 h122 +Multi")

	GuiSize(thisGui, MinMax, A_GuiWidth, A_GuiHeight)
	{ ; V1toV2: Added bracket
		If (A_EventInfo == 1) {
			Return
		}
	} ; V1toV2: Added bracket before function

	Submit := myGui.Add("Button", "x136 y440 w132 h29", "Get Template")
	Submit.Opt("BackgroundFFFF00")
	Submit.OnEvent("Click", copy)
	copy(*)
	{
		A_Clipboard := "Hello, `n`nCould you please reach out to this student at the time shown below? Please set a reminder in your Unify and leave a voicemail if they are not available. `n`nTo (IRT Rep): `nFrom (IRT Rep): `nName of Student: " EditName.Value "`nPhone #: " EditNumber.Value "`nDate: " EditDate.Value "`nTime (EST): " EditTime.Value "`nNotes: " EditNotes.Value "`n `nAll MSCBs will be audited 15 minutes after the callback for: `n`n	The time the inquiry was called. `n	The campaign the inquiry was called on. `n	The disposition used after the call. `n	The Communication Task left describing the interaction. `n`nIf for any reason you are unable to call the student, please let the sender know as soon as possible so that it can be re-assigned. If they are unavailable, you can also reach out to someone on the MCB Audit Team, which is listed in the Toolkit in OneNote!"

		MsgBox("Hello, `n`nCould you please reach out to this student at the time shown below? Please set a reminder in your Unify and leave a voicemail if they are not available. `n`nTo (IRT Rep): `nFrom (IRT Rep): `nName of Student: " EditName.Value "`nPhone #: " EditNumber.Value "`nDate: " EditDate.Value "`nTime (EST): " EditTime.Value "`nNotes: " EditNotes.Value "`n `nAll MSCBs will be audited 15 minutes after the callback for: `n`n	The time the inquiry was called. `n	The campaign the inquiry was called on. `n	The disposition used after the call. `n	The Communication Task left describing the interaction. `n`nIf for any reason you are unable to call the student, please let the sender know as soon as possible so that it can be re-assigned. If they are unavailable, you can also reach out to someone on the MCB Audit Team, which is listed in the Toolkit in OneNote!")

		myGui.Destroy
	}
}