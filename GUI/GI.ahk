GI := Gui(, "General Information")
GI.Opt("-DPIScale")

GI.Add("Text","Section", "Information:")
GI.Add("Edit", "w300 h100 ys vEdit1", "")

GI.Add("Text","", "`n`nResults will be added to the communication task box on Unify.")

Mybtn := GI.add("Button", "w100 center", "OK")
Mybtn.OnEvent("Click", GISend)
GISend(*)
{
    Saved := GI.Submit()
    GIComm := "" Saved.Edit1 ""
    Send(GIComm)
    Sleep "500"
    Send "{Tab 2} ^s"
}