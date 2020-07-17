# Import modules
require './Common.rb'

class CopyFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FolderApi.from_config($config)
    
    $request = GroupDocsSignatureCloud::CopyFolderRequest.new("signaturedocs", "signaturedocs1", $myStorage, $myStorage)
    $response = $api.copy_folder($request)

    puts("Expected response type is Void: 'signaturedocs' folder copied as 'signaturedocs1'.")
  end
end