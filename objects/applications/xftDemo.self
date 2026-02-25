 '30.21.0'
 '
Copyright 1992-2026 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         xftDemo = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules xftDemo.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (\'30.21.0\')\x7fVisibility: public'
        
         revision <- '30.21.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         xftDemo <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xftDemo.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (xlib xftColor)\x7fVisibility: private'
        
         cachedXftColor <- bootstrap stub -> 'globals' -> 'xlib' -> 'xftColor' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (xlib xftDraw)\x7fVisibility: private'
        
         cachedXftDraw <- bootstrap stub -> 'globals' -> 'xlib' -> 'xftDraw' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (xlib xftFont)\x7fVisibility: private'
        
         cachedXftFont <- bootstrap stub -> 'globals' -> 'xlib' -> 'xftFont' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (windowCanvas)\x7fVisibility: public'
        
         canvas <- bootstrap stub -> 'globals' -> 'x11Globals' -> 'windowCanvas' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (paint copy)\x7fVisibility: public'
        
         color <- paint copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (nil)'
        
         demoMorph = bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: public'
        
         drawString: s At: pt = ( |
            | 
            cachedXftDraw xftDrawString8: cachedXftColor
              Font: cachedXftFont
              X: (pt x) Y: (pt y)
              String: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (\'proportional-10\')\x7fVisibility: public'
        
         fontName <- 'proportional-10'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'Comment: XftDraw for the given canvas.\x7fModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         makeDraw: c = ( |
            | 
            c createXftDraw).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         makeFont: name On: display = ( |
            | 
            display xftFontOpenNameOnScreen: display screen number
              Name: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         makePixmap = ( |
             c.
            | 

            c: x11Globals pixmapCanvas copy
              initForSameScreenAs: (desktop w anyWindowCanvas)
                Width: 100 Height: 100 Depth: 24.

            c gc foreground: (c indexForColor: (paint named: 'yellow')).
            c pixMap fillRectangle: (0@0)#(c pixMap size) GC: c gc.

            c gc foreground: (c indexForColor: (paint named: 'green')).
            c pixMap fillRectangle: (10@10)#(40@20) GC: c gc.

            c gc foreground: (c indexForColor: (paint named: 'white')).

            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'Comment: XRenderColor for the given paint.\x7fModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         makeRenderColor: p = ( |
             c.
            | 
            c: xlib xRenderColor new.
            c alpha: p alphaU16.
            c red:   p redU16.
            c green: p greenU16.
            c blue:  p blueU16.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'Comment: XftColor for the given paint.\x7fModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         makeXftColor: p On: display = ( |
             c.
             screen.
            | 

            c: xlib xftColor new.
            screen: display screen.

            display xftColorAllocValue: screen defaultVisualOfScreen
              Colormap: screen defaultColormapOfScreen
              RenderColor: (makeRenderColor: p)
              XftColor: c.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         setup = ( |
            | 
            canvas isNotNil && [ canvas isOpen ] ifFalse: [ canvas: desktop w anyWindowCanvas ].
            cachedXftColor: makeXftColor: color On: canvas display.
            cachedXftFont:  makeFont: fontName On: canvas display.
            cachedXftDraw:  makeDraw: canvas).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         xFontDrawTest <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xftDemo xFontDrawTest.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         color <- paint copyRed: 0.0977517 Green: 0.0977517  Blue: 0.438905.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (nil)'
        
         fontMap.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (nil)'
        
         gc.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: InitializeToExpression: (nil)'
        
         id.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         runMe = ( |
            | 
            fontMap drawString: 'ABC' OnCanvas: (desktop w anyWindowCanvas)
              At: 20@20 Font: id Color: color).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> 'xFontDrawTest' -> () From: ( | {
         'ModuleInfo: Module: xftDemo InitialContents: FollowSlot'
        
         setup = ( |
             w.
            | 
            w: desktop w anyWindowCanvas.
            gc: w gc.
            fontMap: w fontMap.
            id: fontMap idForFontSpec: fontSpec WindowCanvas: w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'Comment: tell me to _RunScript\x7fModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         xlibTemplatesPath <- '/home/uwe/work/self/self/objects/glue/xlibTemplates.self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xftDemo' -> () From: ( | {
         'Comment: You can \'Create Button\' to run this quickly,
or copy/paste bits in the evaluator.\x7fModuleInfo: Module: xftDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         xxxRunMe = ( |
            | 
            fontName: 'Go Mono,mono-28:bold'.
            color: (paint copyHexRGB: '191970') copyAlpha: 0.8.
            "color: paint named: 'black'."

            setup. "create/make live the native stuff"

            drawString: 'Hello, World!' At: 100 @ 140.

            self).
        } | ) 



 '-- Side effects'

 globals modules xftDemo postFileIn
