module Fox
  #
  # The MDI child window contains the application
  # work area in a Multiple Document Interface application.
  #
  # === Events
  #
  # The following messages are sent by FXMDIChild to its target:
  #
  # +SEL_LEFTBUTTONPRESS+::	sent when the left mouse button goes down; the message data is an FXEvent instance.
  # +SEL_LEFTBUTTONRELEASE+::	sent when the left mouse button goes up; the message data is an FXEvent instance.
  # +SEL_MIDDLEBUTTONPRESS+::	sent when the middle mouse button goes down; the message data is an FXEvent instance.
  # +SEL_MIDDLEBUTTONRELEASE+::	sent when the middle mouse button goes up; the message data is an FXEvent instance.
  # +SEL_RIGHTBUTTONPRESS+::	sent when the right mouse button goes down; the message data is an FXEvent instance.
  # +SEL_RIGHTBUTTONRELEASE+::	sent when the right mouse button goes up; the message data is an FXEvent instance.
  # +SEL_SELECTED+::
  #   sent when the window is selected; the message data is a reference to the MDI client's previous active
  #   child window, or +nil+ if there was no active child window.
  # +SEL_DESELECTED+::
  #   sent when the window is deselected; the message data is a reference to the MDI client's new active child window,
  #   or +nil+ if there is no active child window.
  # +SEL_MAXIMIZE+::		sent when the window is maximized
  # +SEL_MINIMIZE+::		sent when the window is minimized
  # +SEL_RESTORE+::		sent when the window is restored to its normal size and position
  # +SEL_CLOSE+::
  #   sent when the user is trying to close this window. The message handler for this message should
  #   return 1 if it's OK to close the window, otherwise it should return zero.
  # +SEL_CLOSEALL+::
  #   sent when the user is trying to close *all* of the MDI child windows. The message handler for this message should
  #   return 1 if it's OK to close all of the windows, otherwise it should return zero.
  # +SEL_DELETE+::		sent immediately before this window is destroyed
  #
  # === MDI Child Window styles
  #
  # +MDI_NORMAL+::	Normal display mode
  # +MDI_MAXIMIZED+::	Window appears maximized
  # +MDI_MINIMIZED+::	Window is iconified or minimized
  # +MDI_TRACKING+::	Track continuously during dragging
  #
  class FXMDIChild < FXComposite

    # Normal (restored) position x-coordinate [Integer]
    attr_accessor :normalX

    # Normal (restored) position y-coordinate [Integer]
    attr_accessor :normalY

    # Normal (restored) width [Integer]
    attr_accessor :normalWidth

    # Normal (restored) height [Integer]
    attr_accessor :normalHeight

    # Iconified position x-coordinate [Integer]
    attr_accessor :iconX

    # Iconified position y-coordinate [Integer]
    attr_accessor :iconY

    # Iconified width [Integer]
    attr_accessor :iconWidth

    # Iconified height [Integer]
    attr_accessor :iconHeight
    
    # Content window [FXWindow]
    attr_reader :contentWindow
    
    # Window title [String]
    attr_accessor :title

    # Highlight color [FXColor]
    attr_accessor :hiliteColor

    # Shadow color [FXColor]
    attr_accessor :shadowColor

    # Base color [FXColor]
    attr_accessor :baseColor

    # Border color [FXColor]
    attr_accessor :borderColor

    # Title color [FXColor]
    attr_accessor :titleColor

    # Title background color [FXColor]
    attr_accessor :titleBackColor
    
    # Window icon [FXIcon]
    attr_accessor :icon
    
    # Window menu [FXPopup]
    attr_accessor :menu
    
    # Title font [FXFont]
    attr_accessor :font

    # Construct MDI Child window with given name and icon
    def initialize(p, name, ic=nil, pup=nil, opts=0, x=0, y=0, w=0, h=0) # :yields: theMDIChild
    end
  
    # Get next MDI Child
    def getMDINext(); end
  
    # Get previous MDI Child
    def getMDIPrev(); end
  
    #
    # Minimize this window.
    # If _notify_ is +true+, ...
    #
    def minimize(notify=false); end

    #
    # Maximize this window.
    # If _notify_ is +true+, ...
    #
    def maximize(notify=false); end

    #
    # Restore this window to its normal position and size.
    # If _notify_ is +true+, ...
    #
    def restore(notify=false); end

    # Return +true+ if maximized
    def maximized? ; end
    
    # Return +true+ if minimized
    def minimized? ; end
    
    # Set tracking instead of just outline
    def setTracking(tracking); end
    
    alias tracking= setTracking
    
    # Return +true+ if tracking, +false+ otherwise.
    def getTracking(); end
    
    alias isTracking? getTracking
    alias tracking    getTracking

  end
end
