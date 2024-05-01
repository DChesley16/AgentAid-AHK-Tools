#Requires AutoHotkey v2.0

#Include GUI\SMCB.ahk
#Include GUI\GI.ahk
#Include GUI\NI.ahk
#Include GUI\Legend.ahk
#Include GUI\Training.ahk

; Five9 DID Numbers
    ::=ug::5995554841{Tab} {Enter} 
    ::=ugm::5995554844{Tab} {Enter}
    ::=ugb::5995551430{Tab} {Enter}
    ::=ugn::5995555181{Tab} {Enter}

    ::=gr::5995552150{Tab} {Enter} 
    ::=grm::5995552154{Tab} {Enter}
    ::=grb::5995577108{Tab} {Enter}
    ::=grn::5995565978{Tab} {Enter}
    ::=mba::5995583698{Tab} {Enter}

    ::=sl::5995583216 {Tab} {Enter}
    ::=ucf::5995583699 {Tab} {Enter}
    ::=uci::5995581465 {Tab} {Enter}
    ::=ucg::5995581466 {Tab} {Enter}
    ::=uct::5995581466 {Tab} {Enter}
    ::=ucd::5995583450 {Tab} {Enter}

    ::=gu::5995555175 {Tab} {Enter}
    ::=ama::5995581223 {Tab} {Enter}
    ::=cwo::5995555180 {Tab} {Enter}
    ::=adv::5995559237 {Tab} {Enter}
    ::=it::5995565976 {Tab} {Enter}
    ::=re::5995555189 {Tab} {Enter}
    ::=reg::5995559238 {Tab} {Enter}
    ::=sfs::5995554828 {Tab} {Enter}

    ::=com::6036443177{Tab} {Enter}

; Unify Communication Task's
    ::ibug::IB ST UG {Tab 2} ^s
    ::ibugm::IB ST UG Mil {Tab 2} ^s
    ::ibugb::IB ST UG B2B {Tab 2} ^s
    ::ibugn::IB ST UG Nursing {Tab 2} ^s

    ::obug::OB ST UG {Tab 2} ^s
    ::obugm::OB ST UG Mil {Tab 2} ^s
    ::obugb::OB ST UG B2B {Tab 2} ^s
    ::obugn::OB ST UG Nursing {Tab 2} ^s

    ::ibgr::IB ST GR {Tab 2} ^s
    ::ibgrm::IB ST GR Mil {Tab 2} ^s
    ::ibgrb::IB ST GR B2B {Tab 2} ^s
    ::ibgrn::IB ST GR Nursing {Tab 2} ^s
    ::ibmba::IB ST MBA {Tab 2} ^s
    ::obgr::OB ST GR {Tab 2} ^s
    ::obgrm::OB ST GR Mil {Tab 2} ^s
    ::obgrb::OB ST GR B2B {Tab 2} ^s
    ::obgrn::OB ST GR Nursing {Tab 2} ^s
    ::obmba::OB ST MBA {Tab 2} ^s

    ::ibsl::IB ST Shapiro Library {Tab 2} ^s
    ::ibucf::IB ST UC Freshmen Team {Tab 2} ^s
    ::ibuci::IB ST UC International Team {Tab 2} ^s
    ::ibucg::IB ST UC Graduate Team {Tab 2} ^s
    ::ibuct::IB ST UC Transfer Team {Tab 2} ^s
    ::ibucd::IB ST UC Doctoral Team {Tab 2} ^s
    ::obsl::OB ST Shapiro Library {Tab 2} ^s
    ::obucf::OB ST UC Freshmen Team {Tab 2} ^s
    ::obuci::OB ST UC International Team {Tab 2} ^s
    ::obucg::OB ST UC Graduate Team {Tab 2} ^s
    ::obugt::OB ST UC Transfer Team {Tab 2} ^s
    ::obucd::OB ST UC Doctoral Team {Tab 2} ^s

    ::ibgu::IB ST Guild {Tab 2} ^s
    ::ibama::IB ST Amazon {Tab 2} ^s 
    ::ibcwo::IB ST CWO {Tab 2} ^s 
    ::ibsfs::IB ST SFS {Tab 2} ^s
    ::ibreg::IB ST Registrar {Tab 2} ^s
    ::ibadv::IB ST Advising {Tab 2} ^s
    ::ibit::IB ST It Helpdesk {Tab 2} ^s
    ::ibre::IB ST Re-engagement {Tab 2} ^s
    ::obgu::OB ST Guild {Tab 2} ^s
    ::obama::OB ST Amazon {Tab 2} ^s 
    ::obcwo::OB ST CWO {Tab 2} ^s 
    ::obsfs::OB ST SFS {Tab 2} ^s
    ::obreg::OB ST Registrar {Tab 2} ^s
    ::obadv::OB ST Advising {Tab 2} ^s
    ::obit::OB ST IT Helpdesk {Tab 2} ^s
    ::obre::OB ST Re-engagement {Tab 2} ^s

    ::ibac::IB ST ^v
    ::ibvm::IB ST Voicemail - ^v

    ::obac::OB ST ^v
    ::obvm::OB ST Voicemail - ^v

    ::ibgi::{
        SendText "IB General Information - "
        sleep(500)
        GI.Show()
    }

    ::ibni::{
        SendText "IB Not Interested - "
        sleep(500)
        NI.Show()
    }

    ::obgi::{
        SendText "OB General Information - "
        sleep(500)
        GI.Show
    }

    ::obni::{
        SendText "OB Not Interested - "
        sleep(500)
        NI.Show()
    }
    