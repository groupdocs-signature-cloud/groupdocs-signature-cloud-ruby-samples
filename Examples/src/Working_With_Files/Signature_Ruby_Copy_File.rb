# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Signature_Ruby_Copy_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsSignatureCloud::CopyFileRequest.new("signaturedocs/one-page.docx", "signaturedocs/one-page-copied.docx", $myStorage, $myStorage)
    $response = $api.copy_file($request)

    puts("Expected response type is Void: 'signaturedocs/one-page.docx' file copied as 'signaturedocs/one-page-copied.docx'.")
  end
end