# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Signature_Ruby_Move_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsSignatureCloud::MoveFileRequest.new("signaturedocs/one-page.docx", "signaturedocs1/one-page.docx", $myStorage, $myStorage)
    $response = $api.move_file($request)

    puts("Expected response type is Void: 'signaturedocs/one-page.docx' file moved to 'signaturedocs1/one-page.docx'.")
  end
end