module Fox
  #
  # Abstract base class for all top-level windows
  #
  # === Events
  #
  # The following messages are sent by FXTopWindow to its target:
  #
  # +SEL_CLOSE+::
  #   sent when the user clicks the close button in the upper right-hand
  #   corner of the top-level window.
  #
  # === Title and border decorations
  #
  # +DECOR_NONE+::            Borderless window
  # +DECOR_TITLE+::           Window title
  # +DECOR_MINIMIZE+::        Minimize button
  # +DECOR_MAXIMIZE+::        Maximize button
  # +DECOR_CLOSE+::           Close button
  # +DECOR_BORDER+::          Border
  # +DECOR_RESIZE+::          Resize handles
  # +DECOR_MENU+::            Window menu
  # +DECOR_ALL+::             All of the above
  #
  # === Initial window placement
  #
  # +PLACEMENT_DEFAULT+::     Place it at the default size and location
  # +PLACEMENT_VISIBLE+::     Place window to be fully visible
  # +PLACEMENT_CURSOR+::      Place it under the cursor position
  # +PLACEMENT_OWNER+::       Place it centered on its owner
  # +PLACEMENT_SCREEN+::      Place it centered on the screen
  # +PLACEMENT_MAXIMIZED+::   Place it maximized to the screen size
  #
  # === Message identifiers
  #
  # +ID_ICONIFY+::            Iconify the window
  # +ID_DEICONIFY+::          Deiconify the window
  # +ID_QUERY_DOCK+::         Toolbar asks to dock

  class FXTopWindow < FXShell

    # Window title [String]
    attr_accessor	:title
    
    # Top padding, in pixels [Integer]
    attr_accessor	:padTop
    
    # Bottom padding, in pixels [Integer]
    attr_accessor	:padBottom
    
    # Left padding, in pixels [Integer]
    attr_accessor	:padLeft
    
    # Right padding, in pixels [Integer]
    attr_accessor	:padRight
    
    # Horizontal spacing between child widgets, in pixels [Integer]
    attr_accessor	:hSpacing
    
    # Vertical spacing between child widgets, in pixels [Integer]
    attr_accessor	:vSpacing
    
    # Packing hints for child widgets [Integer]
    attr_accessor	:packingHints
    
    # Title and border decorations (see above) [Integer]
    attr_accessor	:decorations
    
    # Window icon [FXIcon]
    attr_accessor	:icon
    
    # Window mini (title) icon [FXIcon]
    attr_accessor	:miniIcon

    # Show this window with given _placement_
    # (one of +PLACEMENT_DEFAULT+, +PLACEMENT_VISIBLE+, +PLACEMENT_CURSOR+, +PLACEMENT_OWNER+, +PLACEMENT_SCREEN+ or +PLACEMENT_MAXIMIZED+).
    def show(placement) ; end
  
    # Position the window based on _placement_
    # (one of +PLACEMENT_DEFAULT+, +PLACEMENT_VISIBLE+, +PLACEMENT_CURSOR+, +PLACEMENT_OWNER+, +PLACEMENT_SCREEN+ or +PLACEMENT_MAXIMIZED+).
    def place(placement) ; end
  
    # Iconify window
    def iconify() ; end
  
    # Deiconify window
    def deiconify() ; end
  
    # Return +true+ if window has been iconified
    def iconified?() ; end
  end
end
