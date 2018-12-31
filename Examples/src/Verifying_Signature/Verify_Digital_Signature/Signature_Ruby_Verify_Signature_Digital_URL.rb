# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.requests.post_verification_digital_from_url_request import PostVerificationDigitalFromUrlRequest
from groupdocs_signature_cloud.models.words_verify_digital_options_data import WordsVerifyDigitalOptionsData

class Verify_Signature_Digital_From_Url:

	@staticmethod
	def Post_Verify_Signature_Digital_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
			password = ""

			options = WordsVerifyDigitalOptionsData()

			# set digital properties
			options.certificate_guid = "temp.pfx"
			options.password = "12345678"
			
			request = PostVerificationDigitalFromUrlRequest(Url, options, password, Common_Utilities.storage_name)
			
			respose = api.post_verification_digital_from_url(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
