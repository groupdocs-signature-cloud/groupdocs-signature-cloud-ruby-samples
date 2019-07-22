# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Signature_Ruby_Copy_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsSignatureCloud::CopyFolderRequest.new("signaturedocs", "signaturedocs1", $myStorage, $myStorage)
    $response = $api.copy_folder($request)

    puts("Expected response type is Void: 'signaturedocs' folder copied as 'signaturedocs1'.")
  end
end