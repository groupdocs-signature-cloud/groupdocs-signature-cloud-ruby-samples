# Import modules
require './Common.rb'

class GetDiscUsage
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::StorageApi.from_config($config)
    
    $request = GroupDocsSignatureCloud::GetDiscUsageRequest.new($myStorage)
    $response = $api.get_disc_usage($request)

    puts("Expected response type is DiscUsage: " + ($response).to_s)
  end
end