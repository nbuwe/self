 '30.12.0'
 '
Copyright 1992-2026 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot'
        
         xSelection = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules xSelection.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         directory <- 'graphics'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: xSelection InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- 'X11 Selection'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         postFileIn = ( |
            | 
            "This slot was part of the original, empty world, 
             but shouldn't be part of the new world;
             if the slot has already been removed, do nothing."
             lobby _RemoveSlot: 'snapshotAction' IfFail: ["rereading init"].
             lobby _RemoveSlot: 'systemObjects' IfFail: [|:err. :name| nil].
             lobby _RemoveSlot: 'help' IfFail: [|:err. :name| nil].
             resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         revision <- '30.12.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: graphical interface\x7fCategory: graphics\x7fModuleInfo: Module: xSelection InitialContents: FollowSlot'
        
         xSelection <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xSelection' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xSelection.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'Category: graphical interface\x7fCategory: graphics\x7fModuleInfo: Module: xSelection InitialContents: FollowSlot'
        
         xSelection <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xSelection' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xSelection.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'xSelection' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         xhandler <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xSelection' -> 'xhandler' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xSelection xhandler.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xSelection' -> 'xhandler' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: public'
        
         configureNotify: event = ( |
            | 
            log info: (
              'geometry ',
                    event width printString,
               'x', event height printString,
              '@+', event x printString,
               '+', event y printString).
            resend.configureNotify: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xSelection' -> 'xhandler' -> () From: ( | {
         'Comment: Client messages and selection events
are not selected for with a mask.
So only ask for the structure notify.\x7fModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: public'
        
         eventsToCatch = 131072.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xSelection' -> 'xhandler' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'simpleEventHandler' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xSelection' -> 'xhandler' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         window.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             h.
             new.
             w.
            | 
            new: resend.copy.

            h: xhandler copy.
            w: x11Globals window copy.

            w handler: h.
            h window: w.

            new xhandler: h.
            new).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         demo = ( |
             xaPRIMARY.
             xaSTRING.
             dstProperty.
             w.
            | 
            xaPRIMARY: xlib atom copyPredefined: 'PRIMARY'.
            xaSTRING:  xlib atom copyPredefined: 'STRING'.

            w: xhandler window.
            dstProperty: w display internAtom: 'SELF_SELECTION'.

            w display xConvertSelection: xaPRIMARY Target: xaSTRING
                Property: dstProperty
		Requestor: w platformWindow Time: "XXX: currentTime =" 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         ownerOf: selectionAtom = ( |
            | 
            xhandler window display xGetSelectionOwner: selectionAtom).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         ownerOfPrimary = ( |
            | 
            ownerOf: xlib atom copyPredefined: 'PRIMARY').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xSelection' -> () From: ( | {
         'ModuleInfo: Module: xSelection InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xSelection' -> () From: ( | {
         'Comment: XXX: Use original name, not `name`.
Self tries to be smart and transforms :0
to hostname:0.0, except the former is local,
unix-domain socket, while the latter is a TCP
socket that modern X servers usually just
don\'t listen on.\x7fModuleInfo: Module: xSelection InitialContents: FollowSlot\x7fVisibility: private'
        
         usableDisplayName: d = ( |
            | d originalName).
        } | ) 



 '-- Side effects'

 globals modules xSelection postFileIn
