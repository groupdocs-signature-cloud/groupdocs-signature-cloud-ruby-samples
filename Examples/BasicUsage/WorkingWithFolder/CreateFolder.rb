# Import modules
require './Common.rb'

class CreateFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FolderApi.from_config($config)
    
    $request = GroupDocsSignatureCloud::CreateFolderRequest.new("signaturedocs", $myStorage)
    $response = $api.create_folder($request)

    puts("Expected response type is Void: 'signaturedocs' folder created.")
  end
end