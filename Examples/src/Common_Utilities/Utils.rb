# Load the gem
require 'groupdocs_signature_cloud'

#require 'aspose_storage_cloud'
$app_sid = ""
$app_key = ""
$storage_name = ""
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here
$base_url = "http://api.groupdocs.cloud/v1" #Put your Base URL here

class Common_Utilities
  def self.Get_SignatureApi_Instance()
    # initialization of configuration for signature api client
    configuration = GroupDocsSignatureCloud::Configuration.new($app_sid, $app_key)
    configuration.api_host = $host_url
    configuration.api_base_url = $base_url

    # Create instance of the API
    return GroupDocsSignatureCloud::SignatureApi.new(configuration)
  end
end