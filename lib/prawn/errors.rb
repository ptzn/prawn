# encoding: utf-8

# errors.rb : Implements custom error classes for Prawn
#
# Copyright April 2008, Gregory Brown.  All Rights Reserved.
#
# This is free software. Please see the LICENSE and COPYING files for details.

module Prawn
  module Errors
     
     # This error is raised when Prawn::PdfObject() encounters a Ruby object it
     # cannot convert to PDF
     #
     FailedObjectConversion = Class.new(StandardError)
     
     # This error is raised when Document#page_layout is set to anything
     # other than :portrait or :landscape            
     #
     InvalidPageLayout = Class.new(StandardError)       
     
     # This error is raised when a method requiring a current page is called 
     # without being on a page.
     #
     NotOnPage = Class.new(StandardError)
     
     # This error is raised when Prawn cannot find a specified font   
     #
     UnknownFont = Class.new(StandardError)   

     # This error is raised when Prawn is being used on a M17N aware VM,
     # and the user attempts to add text that isn't compatible with UTF-8
     # to their document
     #
     IncompatibleStringEncoding = Class.new(StandardError)
     
     # This error is raised when Prawn encounters an unknown key in functions
     # that accept an options hash.  This usually means there is a typo in your
     # code or that the option you are trying to use has a different name than
     # what you have specified. 
     #
     UnknownOption = Class.new(StandardError)

     # this error is raised when a user attempts to embed an image of an unsupported
     # type. This can either a completely unsupported format, or a dialect of a
     # supported format (ie. some types of PNG)
     UnsupportedImageType = Class.new(StandardError)
  end
end   
