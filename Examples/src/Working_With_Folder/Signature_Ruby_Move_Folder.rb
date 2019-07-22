# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Signature_Ruby_Move_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()

    $request = GroupDocsSignatureCloud::MoveFolderRequest.new("signaturedocs1", "signaturedocs/signaturedocs1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'signaturedocs1' folder moved to 'signaturedocs/signaturedocs1'.")
  end
end