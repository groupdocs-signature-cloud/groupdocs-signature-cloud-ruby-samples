# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Signature_Ruby_Download_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsSignatureCloud::DownloadFileRequest.new("signaturedocs/one-page.docx", $myStorage)
    $response = $api.download_file($request)
    
    puts("Expected response type is Stream: " + ($response).to_s)
  end
end