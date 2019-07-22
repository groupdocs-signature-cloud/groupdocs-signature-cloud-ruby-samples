# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Signature_Ruby_Delete_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsSignatureCloud::DeleteFileRequest.new("signaturedocs1/one-page.docx", $myStorage)
    $response = $api.delete_file($request)

    puts("Expected response type is Void: 'signaturedocs1/one-page.docx' deleted.")
  end
end