module Fox
  #
  # PCX icon
  #
  class FXPCXIcon < FXIcon
    #
    # Return an initialized FXPCXIcon instance.
    #
    # ==== Parameters:
    #
    # +a+::	an application instance [FXApp]
    # +pix+::	a memory buffer formatted in PCX file format [String]
    # +clr+::	transparency color [FXColor]
    # +opts+::	options [Integer]
    # +w+::	width [Integer]
    # +h+::	height [Integer]
    #
    def initialize(a, pix=nil, clr=0, opts=0, w=1, h=1) # :yields: thePCXIcon
    end
  end

  #
  # Load a PCX file from a stream.
  # If successful, returns an array containing the image pixel data (as a
  # String), the transparency color, the image width and the image height.
  # If it fails, the function returns +nil+.
  #
  # ==== Parameters:
  #
  # +store+::	stream from which to read the file data [FXStream]
  #
  def Fox.fxloadPCX(store); end

  #
  # Save a PCX image to a stream.
  # Returns +true+ on success, +false+ on failure.
  #
  # ==== Parameters:
  #
  # +store+::	stream to which to write the image data [FXStream]
  # +data+::	the image pixel data [String]
  # +transp+::	transparency color [FXColor]
  # +width+::	width [Integer]
  # +height+::	height [Integer]
  #
  def Fox.fxsavePCX(store, data, transp, width, height); end
end

