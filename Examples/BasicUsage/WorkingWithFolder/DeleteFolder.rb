# Import modules
require './Common.rb'

class DeleteFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FolderApi.from_config($config)
    
    $request = GroupDocsSignatureCloud::DeleteFolderRequest.new("signaturedocs1", $myStorage, true)
    $response = $api.delete_folder($request)

    puts("Expected response type is Void: 'signaturedocs/signaturedocs1' folder deleted recursively.")
  end
end