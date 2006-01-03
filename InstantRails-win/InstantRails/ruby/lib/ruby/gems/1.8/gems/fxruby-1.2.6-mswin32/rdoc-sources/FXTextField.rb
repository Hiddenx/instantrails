module Fox
  # A text field is a single-line text entry widget.
  # The text field widget supports clipboard for cut-and-paste
  # operations.
  #
  # === Events
  #
  # The following messages are sent from FXTextField to its target:
  #
  # +SEL_COMMAND+::		sent when the user presses the *Enter* key or tabs out of the text field; the message data is a String containing the text.
  # +SEL_CHANGED+::		sent when the text changes; the message data is a String containing the text.
  # +SEL_VERIFY+::		sent when the user attempts to enter new text in the text field; the message data is a String containing the proposed new text.
  # +SEL_KEYPRESS+::		sent when a key goes down; the message data is an FXEvent instance.
  # +SEL_KEYRELEASE+::		sent when a key goes up; the message data is an FXEvent instance.
  # +SEL_LEFTBUTTONPRESS+::	sent when the left mouse button goes down; the message data is an FXEvent instance.
  # +SEL_LEFTBUTTONRELEASE+::	sent when the left mouse button goes up; the message data is an FXEvent instance.
  # +SEL_MIDDLEBUTTONPRESS+::	sent when the middle mouse button goes down; the message data is an FXEvent instance.
  # +SEL_MIDDLEBUTTONRELEASE+::	sent when the middle mouse button goes up; the message data is an FXEvent instance.
  #
  # === Textfield styles
  #
  # +TEXTFIELD_PASSWD+::      Password mode
  # +TEXTFIELD_INTEGER+::     Integer mode
  # +TEXTFIELD_REAL+::        Real mode
  # +TEXTFIELD_READONLY+::    NOT editable
  # +TEXTFIELD_ENTER_ONLY+::  Only callback when enter hit
  # +TEXTFIELD_LIMITED+::     Limit entry to given number of columns
  # +TEXTFIELD_OVERSTRIKE+::  Overstrike mode
  # +TEXTFIELD_NORMAL+::      <tt>FRAME_SUNKEN|FRAME_THICK</tt>
  #
  # === Message identifiers
  #
  # +ID_CURSOR_HOME+::
  # +ID_CURSOR_END+::
  # +ID_CURSOR_RIGHT+::
  # +ID_CURSOR_LEFT+::
  # +ID_MARK+::
  # +ID_EXTEND+::
  # +ID_SELECT_ALL+::
  # +ID_DESELECT_ALL+::
  # +ID_CUT_SEL+::
  # +ID_COPY_SEL+::
  # +ID_PASTE_SEL+::
  # +ID_DELETE_SEL+::
  # +ID_OVERST_STRING+::
  # +ID_INSERT_STRING+::
  # +ID_BACKSPACE+::
  # +ID_DELETE+::
  # +ID_TOGGLE_EDITABLE+::
  # +ID_TOGGLE_OVERSTRIKE+::
  # +ID_BLINK+::
  #
  class FXTextField < FXFrame

    # Text field editability [Boolean]
    attr_writer		:editable

    # Cursor position [Integer]
    attr_accessor	:cursorPos

    # Anchor position [Integer]
    attr_accessor	:anchorPos

    # Text [String]
    attr_accessor	:text

    # Text font [FXFont]
    attr_accessor	:font

    # Text color [FXColor]
    attr_accessor	:textColor

    # Background color for selected text [FXColor]
    attr_accessor	:selBackColor

    # Foreground color for selected text [FXColor]
    attr_accessor	:selTextColor

    # Width of this text field, in terms of number of columns * 'm' [Integer]
    attr_accessor	:numColumns

    # Text justification mode [Integer]
    attr_accessor	:justify

    # Status line help text [String]
    attr_accessor	:helpText

    # Tool tip message [String]
    attr_accessor	:tipText

    # Text style [Integer]
    attr_accessor	:textStyle

    #
    # Return an initialized FXTextField instance.
    # It should be wide enough to display _ncols_ columns.
    #
    # ==== Parameters:
    #
    # +p+::	the parent window for this text field [FXComposite]
    # +ncols+::	number of visible items [Integer]
    # +tgt+::	the message target, if any, for this text field [FXObject]
    # +sel+::	the message identifier for this text field [Integer]
    # +opts+::	text field options [Integer]
    # +x+::	initial x-position [Integer]
    # +y+::	initial y-position [Integer]
    # +w+::	initial width [Integer]
    # +h+::	initial height [Integer]
    # +pl+::	internal padding on the left side, in pixels [Integer]
    # +pr+::	internal padding on the right side, in pixels [Integer]
    # +pt+::	internal padding on the top side, in pixels [Integer]
    # +pb+::	internal padding on the bottom side, in pixels [Integer]
    #
    def initialize(p, ncols, tgt=nil, sel=0, opts=TEXTFIELD_NORMAL, x=0, y=0, w=0, h=0, pl=DEFAULT_PAD, pr=DEFAULT_PAD, pt=DEFAULT_PAD, pb=DEFAULT_PAD) # :yields: theTextField
    end
  
    # Return +true+ if text field may be edited
    def editable?() ; end
  
    # Select all text
    def selectAll(); end
  
    # Select _len_ characters starting at given position _pos_.
    def setSelection(pos, len) ; end
  
    # Extend the selection from the anchor to the given position _pos_.
    def extendSelection(pos) ; end
  
    # Unselect the text
    def killSelection() ; end
  
    # Return +true+ if position _pos_ is selected.
    def posSelected?(pos) ; end
  
    # Return +true+ if position _pos_ is fully visible.
    def posVisible?(pos) ; end
  
    # Scroll text to make the given position _pos_ visible.
    def makePositionVisible(pos) ; end
  end
end
