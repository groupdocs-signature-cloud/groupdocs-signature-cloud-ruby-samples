# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class File_Formats
  def self.Get_All_Supported_File_Formats()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    # Retrieve supported file-formats
    response = api.get_supported_formats()

    # Print out supported file-formats
    puts("Supported file-formats:")
    response.formats.each do |format|
      puts("#{format.file_format} (#{format.extension})")
    end
  end
end