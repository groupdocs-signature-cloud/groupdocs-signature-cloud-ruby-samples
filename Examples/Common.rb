
$config = ""

class Common
  
  def self.UploadSampleFiles()

    @TestFiles = Dir.glob("Resources/**/*.*")

    # Api initialization
    storageApi = GroupDocsSignatureCloud::StorageApi.from_config($config)
    fileApi = GroupDocsSignatureCloud::FileApi.from_config($config)

    puts("Files Count: "+((@TestFiles).length).to_s)
    @TestFiles.each do |item|
      dstPath = item.gsub('Resources/', '')
      puts("File to Upload: " + dstPath)
      fileExistRequest = GroupDocsSignatureCloud::ObjectExistsRequest.new(dstPath)
      fileExistsResponse = storageApi.object_exists(fileExistRequest)
      if fileExistsResponse.exists == false
        file = File.open(item, "r")
        uploadRequest = GroupDocsSignatureCloud::UploadFileRequest.new(dstPath, file)
        fileApi.upload_file(uploadRequest)
        puts("Uploaded missing file: " + item)
      end
    end

    puts("File Uploading completed..")
  end
end