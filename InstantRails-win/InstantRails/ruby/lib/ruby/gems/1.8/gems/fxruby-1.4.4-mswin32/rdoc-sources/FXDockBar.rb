module Fox
  #
  # A dock bar widget can be docked inside a dock site widget, or floated
  # around freely.  Users can move, undock, and dock the dock bar widget
  # by means of a handle such as a tool bar grip.
  #
  # === Dock Bar Options
  #
  # +ALLOW_NOWHERE+::		Don't allow docking anywhere
  # +ALLOW_TOP+::		Docking at the top only
  # +ALLOW_BOTTOM+::		Docking at the bottom only
  # +ALLOW_LEFT+::		Docking at the left only
  # +ALLOW_RIGHT+::		Docking at the right only
  # +ALLOW_HORIZONTAL+::	Docking at the top and bottom
  # +ALLOW_VERTICAL+::		Docking at the left and right
  # +ALLOW_EVERYWHERE+::	Docking can be everywhere
  #
  class FXDockBar < FXPacker

    # Docking side, one of +LAYOUT_SIDE_LEFT+, +LAYOUT_SIDE_RIGHT+, +LAYOUT_SIDE_TOP+ or +LAYOUT_SIDE_BOTTOM+ [Integer]
    attr_accessor :dockingSide

    #
    # Construct a floatable dock bar, with a default parent _p_ and an
    # alternate parent _q_. To allow docking and dragging, the default parent
    # _p_ must be of type FXDockSite, and the alternate parent _q_ must be of
    # type FXToolBarShell.
    # Normally, the dock bar is docked under a window _p_ of type FXDockSite.
    # When floated, the toolbar can be docked under window _q_, which is
    # usually an kind of FXToolBarShell window.
    #
    # ==== Parameters:
    #
    # +p+::	the "dry dock" window for this dock bar [FXComposite]
    # +q+::	the "wet dock" window for this dock bar [FXComposite]
    # +opts+::	dock bar options [Integer]
    # +x+::	initial x-position [Integer]
    # +y+::	initial y-position [Integer]
    # +w+::	initial width [Integer]
    # +h+::	initial height [Integer]
    # +pl+::	internal padding on the left side, in pixels [Integer]
    # +pr+::	internal padding on the right side, in pixels [Integer]
    # +pt+::	internal padding on the top side, in pixels [Integer]
    # +pb+::	internal padding on the bottom side, in pixels [Integer]
    # +hs+::	horizontal spacing between widgets, in pixels [Integer]
    # +vs+::	vertical spacing between widgets, in pixels [Integer]
    #
    def initialize(p, q, opts=LAYOUT_TOP|LAYOUT_LEFT|LAYOUT_FILL_X, x=0, y=0, w=0, h=0, pl=3, pr=3, pt=2, pb=2, hs=DEFAULT_SPACING, vs=DEFAULT_SPACING) # :yields: theDockBar
    end
  
    #
    # Construct a non-floatable dock bar.
    # The dock bar can not be undocked.
    #
    # ==== Parameters:
    #
    # +p+::	the parent window for this dock bar [FXComposite]
    # +opts+::	dock bar options [Integer]
    # +x+::	initial x-position [Integer]
    # +y+::	initial y-position [Integer]
    # +w+::	initial width [Integer]
    # +h+::	initial height [Integer]
    # +pl+::	internal padding on the left side, in pixels [Integer]
    # +pr+::	internal padding on the right side, in pixels [Integer]
    # +pt+::	internal padding on the top side, in pixels [Integer]
    # +pb+::	internal padding on the bottom side, in pixels [Integer]
    # +hs+::	horizontal spacing between widgets, in pixels [Integer]
    # +vs+::	vertical spacing between widgets, in pixels [Integer]
    #
    def initialize(p, opts=LAYOUT_TOP|LAYOUT_LEFT|LAYOUT_FILL_X, x=0, y=0, w=0, h=0, pl=3, pr=3, pt=2, pb=2, hs=DEFAULT_SPACING, vs=DEFAULT_SPACING) # :yields: theDockBar
    end
    
    # Return +true+ if docked
    def docked? ; end

    #
    # Set parent when docked.
    # If it was docked, reparent under the new docking window.
    #
    def dryDock=(dry); end
    
    # Return parent when docked.
    def dryDock; end

    #
    # Set parent when floating.
    # If it was undocked, then reparent under the new floating window.
    #
    def wetDock=(wet); end
    
    # Return parent when floating.
    def wetDock; end

    #
    # Search for dock against given side of main window.
    #
    def findDockAtSide(side=LAYOUT_SIDE_TOP); end

    #
    # Search for dock close to coordinates (<em>root_x</em>, <em>root_y</em>).
    #
    def findDockNear(root_x, root_y); end

    #
    # Dock the bar against the given side, after some other widget.
    # However, if after is -1, it will be docked as the innermost bar just before
    # the work-area, while if after is 0, if will be docked as the outermost bar.
    #
    def dock(docksite, before=nil); end

    #
    # Dock the bar against the given side, near the given position relative
    # to the toolbar dock's origin.
    #
    def dock(docksite, local_x, local_y); end

    #
    # Undock or float the bar.
    # The initial position of the wet dock is a few pixels
    # below and to the right of the original docked position.
    #
    def undock(root_x, root_y); end

    #
    # Change set of sides where docking is allowed.
    # The default is to allow docking on all sides.
    #
    def allowedSides=(allowed); end

    #
    # Return set of sides where docking is allowed
    #
    def allowedSides(); end
  end
end
