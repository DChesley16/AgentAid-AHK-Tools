NI := Gui(, "No Longer Interested")

NI.Add("Text","Section", "Reason:")
NI.Add("ListBox", "w150 h100 ys vNIReason", ["Program not offered","Not ready to move forward","Other school","Hung up after introduction","Never inquiried"])
NI.Add("Text","", "`n`nResults will be added to the communication task box on Unify.")

NIBtn := NI.add("Button", "w100 center", "Submit")
NIbtn.OnEvent("Click", NISend)
NISend(*)
{
    Saved := NI.Submit()
    NIComm := "" Saved.NIReason ""
    Send(NIComm)
}