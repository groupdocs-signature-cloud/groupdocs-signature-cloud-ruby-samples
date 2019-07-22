# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class File_Formats
  def self.Signature_Ruby_Get_Supported_Formats()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    # Retrieve supported file-formats
    $response = api.get_supported_file_formats()

    # Print out supported file-formats
    puts("Supported file-formats:")
    $response.formats.each do |format|
      puts("#{format.file_format} (#{format.extension})")
    end
  end
end