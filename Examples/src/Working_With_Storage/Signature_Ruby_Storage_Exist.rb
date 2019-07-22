# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Signature_Ruby_Storage_Exist()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsSignatureCloud::StorageExistsRequest.new($myStorage)
    $response = $api.storage_exists($request)

    puts("Expected response type is StorageExist: " + ($response).to_s)
  end
end