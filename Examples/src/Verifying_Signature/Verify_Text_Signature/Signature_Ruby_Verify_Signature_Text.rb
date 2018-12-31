# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.pdf_verify_text_options_data import PdfVerifyTextOptionsData
from groupdocs_signature_cloud.models.requests.post_verification_text_request import PostVerificationTextRequest

class Verify_Signature_Text:

	@staticmethod
	def Post_Verify_Signature_Text():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			fileName = "sample2.pdf"
			password = ""
			folder = ""

			options = PdfVerifyTextOptionsData()

			# set text properties
			options.text = "John Smith"
			#set pages for verify
			options.document_page_number = 1
				
			request = PostVerificationTextRequest(fileName, options, password, folder,Common_Utilities.storage_name)
			
			respose = api.post_verification_text(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))