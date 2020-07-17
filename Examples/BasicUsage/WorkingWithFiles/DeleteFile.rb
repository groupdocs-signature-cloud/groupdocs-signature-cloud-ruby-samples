# Import modules
require './Common.rb'

class DeleteFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FileApi.from_config($config)

    $request = GroupDocsSignatureCloud::DeleteFileRequest.new("signaturedocs1/one-page.docx", $myStorage)
    $response = $api.delete_file($request)

    puts("Expected response type is Void: 'signaturedocs1/one-page.docx' deleted.")
  end
end