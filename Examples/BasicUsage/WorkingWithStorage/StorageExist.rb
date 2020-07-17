# Import modules
require './Common.rb'

class StorageExist
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::StorageApi.from_config($config)
    
    $request = GroupDocsSignatureCloud::StorageExistsRequest.new($myStorage)
    $response = $api.storage_exists($request)

    puts("Expected response type is StorageExist: " + ($response).to_s)
  end
end