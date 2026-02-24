"
Copyright 1992-2026 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
"

"Template used by primitiveMaker to create Xft primitives."

(primitiveMaker reader copy staticLinking) create: 'xft' Flag: 'xlib_semaphore' From: ('

  -- Copyright 1992-2026 AUTHORS.
  -- See the legal/LICENSE file for license information and legal/AUTHORS for authors.

  macroName: xft
  glueLibraryName: xft_glue.o

','

traits: traits xlib display

 category: xft
 visibility: publicSlot
  Display xftFontOpenNameOnScreen: int Name: string \
            = XftFont {xlib xftFont deadCopy} call XftFontOpenName canAWS

  Display xftFontOpenXlfdOnScreen: int Name: string \
            = XftFont {xlib xftFont deadCopy} call XftFontOpenXlfd canAWS

  -- makes font invalid but does not kill its proxy
  -- see traits>>xlib>>xftFont>>deleteOnDisplay: that does
  Display xftFontClose: XftFont = void call XftFontClose canAWS

  Display xftDrawCreate: proxy Drawable ANY_SEAL \
                 Visual: Visual \
                 Colormap: proxy Colormap Colormap_seal \
            = XftDraw {xlib xftDraw deadCopy} call XftDrawCreate canAWS

  Display xftDrawCreateAlpha: proxy Pixmap ANY_SEAL \
                       Depth: int \
            = XftDraw {xlib xftDraw deadCopy} call XftDrawCreateAlpha canAWS

  Display xftDrawCreateBitmap: proxy Pixmap ANY_SEAL \
            = XftDraw {xlib xftDraw deadCopy} call XftDrawCreateBitmap canAWS

  Display xftTextExtents8: XftFont \
                   String: string_len_null \
                  Extents: XGlyphInfo \
            = void call XftTextExtents8_wrap canAWS

  -- a version that takes RGBA values directly to avoid the nuisance
  -- of allocating and deleting an instance of XRenderColor
  Display xftColorAllocValue: Visual \
                    Colormap: proxy Colormap Colormap_seal \
                         Red: unsigned_short \
                       Green: unsigned_short \
                        Blue: unsigned_short \
                       Alpha: unsigned_short \
                    XftColor: XftColor \
            = bool call XftColorAllocValueRGBA_wrap canAWS

  Display xftColorAllocValue: Visual \
                    Colormap: proxy Colormap Colormap_seal \
                 RenderColor: XRenderColor \
                    XftColor: XftColor \
            = bool call XftColorAllocValue canAWS


traits: traits xlib xftFont
 visibility: publicSlot
  // no new and delete as XftFont is an interface with the
  // implementation subclass private to libXft with references
  // obtained (refcounted) via XftFontOpen* factory methods and
  // released via XftFontClose.   See also deleteOnDisplay:
  XftFont ascent = int getMember ascent
  XftFont descent = int getMember descent
  XftFont height = int getMember height
  XftFont max_advance_width = int getMember max_advance_width
  XftFont patternFormat: string_null = string call XftFontPatternFormat_wrap canAWS


traits: traits xlib xGlyphInfo
 visibility: publicSlot
  void new = XGlyphInfo {xlib xGlyphInfo deadCopy} new
  XGlyphInfo delete = void delete
  XGlyphInfo width = unsigned_short getMember width
  XGlyphInfo height = unsigned_short getMember height
  XGlyphInfo x = short getMember x
  XGlyphInfo y = short getMember y
  XGlyphInfo xOff = short getMember xOff
  XGlyphInfo yOff = short getMember yOff


traits: traits xlib xRenderColor
 visibility: publicSlot
  void new = XRenderColor {xlib xRenderColor deadCopy} new
  XRenderColor delete = void delete
  XRenderColor red = unsigned_short getMember red
  XRenderColor green = unsigned_short getMember green
  XRenderColor blue = unsigned_short getMember blue
  XRenderColor alpha = unsigned_short getMember alpha
  XRenderColor red: unsigned_short = void setMember red
  XRenderColor green: unsigned_short = void setMember green
  XRenderColor blue: unsigned_short = void setMember blue
  XRenderColor alpha: unsigned_short = void setMember alpha


traits: traits xlib xftColor
 visibility: publicSlot
  void new = XftColor {xlib xftColor deadCopy} new
  XftColor delete = void delete
  XftColor pixel = unsigned_long getMember pixel
  XftColor red = unsigned_short getMember color.red
  XftColor green = unsigned_short getMember color.green
  XftColor blue = unsigned_short getMember color.blue
  XftColor alpha = unsigned_short getMember color.alpha


traits: traits xlib xftDraw
 visibility: privateSlot
  -- cannot automatically kill proxy with custom delete
  -- public delete calls this and kills
  XftDraw destroy = void call XftDrawDestroy

 visibility: publicSlot
  XftDraw xftDrawSetNoClipMask = void call XftDrawSetNoClipMask_wrap canAWS
  XftDraw xftDrawSetClipRectangleX: int \
			         Y: int \
			     Width: int \
		            Height: int \
          = void call XftDrawSetClipRectangle_wrap canAWS
  XftDraw xftDrawString8: XftColor \
                    Font: XftFont \
                       X: int \
                       Y: int \
                  String: string_len_null \
          = void call XftDrawString8_wrap canAWS
')
