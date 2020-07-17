# Import modules
require './Common.rb'

class ObjectExists
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::StorageApi.from_config($config)
    
    $request = GroupDocsSignatureCloud::ObjectExistsRequest.new("signaturedocs/one-page.docx", $myStorage)
    $response = $api.object_exists($request)

    puts("Expected response type is ObjectExist: " + ($response).to_s)
  end
end