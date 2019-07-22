# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Signature_Ruby_Create_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsSignatureCloud::CreateFolderRequest.new("signaturedocs", $myStorage)
    $response = $api.create_folder($request)

    puts("Expected response type is Void: 'signaturedocs' folder created.")
  end
end