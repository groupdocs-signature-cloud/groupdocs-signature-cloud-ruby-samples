# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.requests.post_verification_digital_request import PostVerificationDigitalRequest
from groupdocs_signature_cloud.models.pdf_verify_digital_options_data import PdfVerifyDigitalOptionsData

class Verify_Signature_Digital:

	@staticmethod
	def Post_Verify_Signature_Digital():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			fileName = "sample2.pdf"
			password = ""
			folder = ""

			options = PdfVerifyDigitalOptionsData()

			# set digital properties
			options.certificate_guid = "temp.pfx"
			options.password = "12345678"
			
			request = PostVerificationDigitalRequest(fileName, options, password, folder,Common_Utilities.storage_name)
			
			respose = api.post_verification_digital(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
