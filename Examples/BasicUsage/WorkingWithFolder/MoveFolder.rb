# Import modules
require './Common.rb'

class MoveFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FolderApi.from_config($config)

    $request = GroupDocsSignatureCloud::MoveFolderRequest.new("signaturedocs1", "signaturedocs/signaturedocs1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'signaturedocs1' folder moved to 'signaturedocs/signaturedocs1'.")
  end
end