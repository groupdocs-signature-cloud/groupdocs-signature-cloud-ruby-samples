# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Signature_Ruby_Delete_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsSignatureCloud::DeleteFolderRequest.new("signaturedocs1", $myStorage, true)
    $response = $api.delete_folder($request)

    puts("Expected response type is Void: 'signaturedocs/signaturedocs1' folder deleted recursively.")
  end
end