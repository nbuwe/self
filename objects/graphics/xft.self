 '30.21.0'
 '
Copyright 1992-2026 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         xft = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules xft.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'graphics'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         myComment <- 'Client-side font rendering for X11'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: InitializeToExpression: (\'30.21.0\')\x7fVisibility: public'
        
         revision <- '30.21.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xft' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'xft_wrappers
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftDraw = bootstrap define: bootstrap stub -> 'globals' -> 'xlib' -> 'xftDraw' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xlib' -> 'xftDraw' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xlib xftDraw.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'x11Globals' -> 'pixmapCanvas' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: InitializeToExpression: (xlib xftDraw)\x7fVisibility: private'
        
         cachedXftDraw <- bootstrap stub -> 'globals' -> 'xlib' -> 'xftDraw' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'x11Globals' -> () From: ( | {
         'Category: graphical interface\x7fCategory: ui2\x7fCategory: System\x7fCategory: Fonts\x7fComment: `x11Globals windowCanvas fontMap` is set to a font dictionary
(which is currently `fontDictionary` above).  We need to
reimplement the same beahvior with Xft.

Also need to teach `traits canvas text:At:FontSpec:Color`
to use it.\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftFontDictionary = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'x11Globals' -> 'xftFontDictionary' -> () From: ( |
             {} = 'Comment: See `traits abstractFontDictionary`.

The font map object needs to accomodate the X11
server-side fonts model.  In a nushell you open
a font and get its \"id\" with:
```c
Font id = XLoadFont(dpy, \"font name\");
```
A font \"id\" you obtain is then set as part of the
X11 graphics context and the server will use it
when we ask it to `XDrawString` with that context.

The \"id\" is a local handle for a remote resource
in the X11 server.  It doesn\'t tell you anything
about the font.

But you can query information about a font,
like its metrics, by retrieving its \"structure\"
from the server with:
```c
XFontStruct *s = XQueryFont(dpy, id);
```

This is where \"id\" and \"struct\" in the method names
come from and why there are two different methods.

NB: The `WindowCanvas:` argument is a bit weird.
X11 fonts are server resources and thus they belong
to a display object.

TODO: This doc comment should be moved to
`traits abstractFontDictionary` where it belongs.\x7fModuleInfo: Creator: globals x11Globals xftFontDictionary.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'x11Globals' -> 'xftFontDictionary' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: InitializeToExpression: (dictionary copyRemoveAll)\x7fVisibility: private'
        
         fonts = dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'Category: graphical interface\x7fCategory: ui2\x7fCategory: System\x7fCategory: Fonts\x7fModuleInfo: Module: xft InitialContents: FollowSlot'
        
         xftFontDictionary = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xftFontDictionary.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'x11Globals' -> 'xftFontDictionary' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'xftFontDictionary' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xGlyphInfo = bootstrap define: bootstrap stub -> 'globals' -> 'xlib' -> 'xGlyphInfo' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xlib' -> 'xGlyphInfo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xlib xGlyphInfo.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xGlyphInfo = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xlib' -> 'xGlyphInfo' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xlib xGlyphInfo.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> 'xGlyphInfo' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'xlib' -> 'xGlyphInfo' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xRenderColor = bootstrap define: bootstrap stub -> 'globals' -> 'xlib' -> 'xRenderColor' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xlib' -> 'xRenderColor' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xlib xRenderColor.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xRenderColor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xlib' -> 'xRenderColor' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xlib xRenderColor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> 'xRenderColor' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'xlib' -> 'xRenderColor' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftColor = bootstrap define: bootstrap stub -> 'globals' -> 'xlib' -> 'xftColor' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xlib' -> 'xftColor' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xlib xftColor.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftColor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xlib' -> 'xftColor' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xlib xftColor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> 'xftColor' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'xlib' -> 'xftColor' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftDraw = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xlib' -> 'xftDraw' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xlib xftDraw.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> 'xftDraw' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'xlib' -> 'xftDraw' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftFont = bootstrap define: bootstrap stub -> 'globals' -> 'xlib' -> 'xftFont' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xlib' -> 'xftFont' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xlib xftFont.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftFont = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xlib' -> 'xftFont' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xlib xftFont.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xlib' -> 'xftFont' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'xlib' -> 'xftFont' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing alpha (for Quartz)\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         alphaU16 = ( |
            | 
            (rawAlpha * 16rFFFF) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing alpha (for Quartz)\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         alphaU8 = ( |
            | 
            (rawAlpha * 16rFF) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         asU16: v = ( |
            | 
            ((v * 16rFFFF) / range ) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         asU8: v = ( |
            | 
            ((v * 16rFF) / range ) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         blueU16 = ( |
            | 
            asU16: rawBlue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         blueU8 = ( |
            | 
            asU8: rawBlue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         greenU16 = ( |
            | 
            asU16: rawGreen).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         greenU8 = ( |
            | 
            asU8: rawGreen).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         redU16 = ( |
            | 
            asU16: rawRed).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'paint' -> () From: ( | {
         'Category: accessing RGB\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         redU8 = ( |
            | 
            asU8: rawRed).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xFontDictionary' -> () From: ( | {
         'Category: drawing\x7fComment: XXX: Jot it down here.  The idea is for the canvases
`drawString:...` to dispatch to font-specific object
to do the drawing.  This is the X server-side fonts
version.\x7fModuleInfo: Module: xft InitialContents: FollowSlot'
        
         drawString: s OnCanvas: canvas At: pt Font: id Color: c = ( |
             gc.
            | 
            gc: canvas gc.

            canvas setColor: c.
            gc font: id.
            canvas drawable drawString: s At: pt GC: gc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xPixmapCanvas' -> () From: ( | {
         'Category: basics\x7fComment: Nearly identical to xWindowCanvas>>createXftDraw,
but there is no common parent that abstracts away
drawable.\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         createXftDraw = ( |
             screen.
            | 

            screen: display screen.
            display xftDrawCreate: pixMap
              Visual: screen defaultVisualOfScreen
              Colormap: screen defaultColormapOfScreen).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xPixmapCanvas' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         noDrawString: s At: pt FontSpec: fSpec Color: c = ( |
            | 
            log debug: (
              'pixmap 0x', (pixMap hash hexPrintString),
              ' text "', s, '"').
            resend.drawString: s At: pt FontSpec: fSpec Color: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xPixmapCanvas' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         xftDraw = ( |
            | 
            cachedXftDraw isLive ifFalse: [
              cachedXftDraw: createXftDraw.
              log debug: (
                'new draw for',
                ' canvas 0x', (hash hexPrintString),
                ' pixmap 0x', (pixMap hash hexPrintString)
              ).
            ]
            True: [
              log debug: (
                'OLD draw for',
                ' canvas 0x', (hash hexPrintString),
                ' pixmap 0x', (pixMap hash hexPrintString)
              ).
            ].
            cachedXftDraw).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xPixmapCanvas' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         xxxDrawString: s At: pt FontSpec: fSpec Color: c = ( |
             draw.
             font.
             origin.
             screen.
             xc.
            | 

            log debug: (
              'pixmap 0x', (pixMap hash hexPrintString),
              ' text "', s, '"').

            winCanvas fontMap = x11Globals xftFontDictionary ifFalse: [
              winCanvas fontMap: x11Globals xftFontDictionary.
            ].

            origin: transformPt: pt.

            screen: display screen.

            xc: xlib xftColor new.
            display xftColorAllocValue: screen defaultVisualOfScreen
              Colormap: screen defaultColormapOfScreen
              Red: c redU16
              Green: c greenU16
              Blue: c blueU16
              Alpha: c alphaU16
              XftColor: xc.

            font: idForFontSpec: fSpec copySize: scaleNum: fSpec size.

            draw: xftDraw.
            clip ifNil: [
              draw xftDrawSetNoClipMask
            ]
            IfNotNil: [| o |
              o: clip origin.
              draw xftDrawSetClipRectangleX: (o x) Y: (o y)
                Width: (clip width) Height: (clip height).
            ].
            draw xftDrawString8: xc Font: (font font)
              X: (origin x) Y: (origin y)
              String: s.

            xc delete).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xWindowCanvas' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         createXftDraw = ( |
             screen.
            | 

            screen: display screen.
            display xftDrawCreate: platformWindow
              Visual: screen defaultVisualOfScreen
              Colormap: screen defaultColormapOfScreen).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xWindowCanvas' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         drawString: s At: pt FontSpec: fSpec Color: c = ( |
            | 
            log debug: (
              'window 0x', (platformWindow hash hexPrintString),
              ' text "', s, '"').
            resend.drawString: s At: pt FontSpec: fSpec Color: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             new.
            | 
            new: clone.
            new fonts: fonts copy.
            new).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
             new.
            | 
            new: clone.
            new fonts: fonts copyRemoveAll.
            new).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: lookups\x7fCategory: helpers\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         fontAdapter = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapter' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits xftFontDictionary fontAdapter.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapter' -> () From: ( | {
         'Comment: libXft wants display for many XftFont
operations, even though it should already
know that internally as far as I can tell.\x7fModuleInfo: Module: xft InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         display.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapter' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         font.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapter' -> () From: ( | {
         'Comment: Name used to open this font.
Only for debugging/observability.\x7fModuleInfo: Module: xft InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         name.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: lookups\x7fCategory: helpers\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         fontAdapterTraits = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( |
             {} = 'Comment: For some reason libXft requires `Display` argument
to be passed to methods that take `XftFont` argument
even though, as far as I can tell, a font is tied to
the display it is opened for and that information is
available to Xft internally.\x7fModuleInfo: Creator: traits xftFontDictionary fontAdapterTraits.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapter' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( | {
         'Category: morphic\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         ascent = ( |
            | 
            font ascent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         copyXftFont: font Display: display = ( |
            | 
            copyXftFont: font Display: display Name: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         copyXftFont: font Display: display Name: name = ( |
             new.
            | 
            new: copy.
            new font: font.
            new display: display.
            new name: name.  "for debugging/observability"
            new).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( | {
         'Category: morphic\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         descent = ( |
            | 
            font descent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( | {
         'Category: morphic\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         maxCharHeight = ( |
            | 
            font height).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> 'fontAdapterTraits' -> () From: ( | {
         'Category: morphic\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         textWidth: s = ( |
             ext.
             width.
            | 
            ext: xlib xGlyphInfo new.
            display xftTextExtents8: font
              String: s Extents: ext.
            width: ext xOff. "sic!"
            ext delete.
            width).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: lookups\x7fComment: \"id\" used to draw text with this font\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         idForFontSpec: fSpec WindowCanvas: wc = ( |
            | 
            xftFontForFontSpec: fSpec
              WindowCanvas: wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'abstractFontDictionary' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | 
            fonts size printString, ' entries').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: lookups\x7fComment: \"struct\" that can be used to query font metrics
for geometry calcilations\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         structForFontSpec: fSpec WindowCanvas: wc = ( |
            | 
            xftFontForFontSpec: fSpec
              WindowCanvas: wc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: lookups\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         xftFontForFontSpec: fSpec WindowCanvas: wc = ( |
             name.
            | 
            name: xftFontNameOf: fSpec.

            fonts at: name IfAbsent: [
              | display. xf. adapter. |

              display: wc display.
              xf: display xftFontOpenNameOnScreen: display screen number Name: name.
              adapter: fontAdapter copyXftFont: xf Display: display Name: name.

              fonts at: name Put: adapter.
              adapter.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: lookups\x7fCategory: helpers\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         xftFontNameOf: aFontSpec = ( |
            | 
            aFontSpec name,            "the font the user wants"
              ',', aFontSpec generic,  "but xft can do fallback for us"
              '-', aFontSpec size asString,
              xftFontStyleOf: aFontSpec).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xftFontDictionary' -> () From: ( | {
         'Category: lookups\x7fCategory: helpers\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: private'
        
         xftFontStyleOf: aFontSpec = ( |
             style <- ''.
            | 
            aFontSpec style isEmpty ifTrue: [ ^ style  ].

            (aFontSpec style matchesPattern: '*bold*'   IgnoreCase: true) ifTrue: [ style: style, ':Bold' ].
            (aFontSpec style matchesPattern: '*italic*' IgnoreCase: true) ifTrue: [ style: style, ':Italic' ].
            style).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xGlyphInfo' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xRenderColor' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xftColor' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xftDraw' -> () From: ( | {
         'Comment: primitiveMaker currently doesn\'t automatically kill the proxy
if `delete` primitive is done with a custom call.\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         delete = ( |
            | 
            destroy. kill).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xftDraw' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xftFont' -> () From: ( | {
         'Comment: A `delete` method generated by primitiveMaker kills
its proxy receiver automatically, but destructors take
no arguments.  So roll our own `delete` with an argument,
that also kills the receiver like a plain `delete` would.\x7fModuleInfo: Module: xft InitialContents: FollowSlot'
        
         deleteOnDisplay: display = ( |
            | 
            display xftFontClose: self.
            kill).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xftFont' -> () From: ( | {
         'ModuleInfo: Module: xft InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'xftFont' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: xft InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | 
            isLive ifTrue: [
              patternFormat: '%{fullname}-%{size}'
            ]
            False: [
              resend.statePrintString
            ]).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'xft_wrappers' From: 'glue'



 '-- Side effects'

 globals modules xft postFileIn
