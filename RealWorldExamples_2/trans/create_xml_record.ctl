//#CTL2

// Transforms input record into output record.
function integer transform() {
	$field = concat("<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n",
			"\t<soap:Body>\n",
          	"\t\t<m:GetRDFTriples xmlns:m=\"http://www.schemaweb.info/webservices/methods/\">\n",
            "\t\t\t<t:namespace xmlns:t=\"http://www.schemaweb.info/2003/types/\">",$field,"</t:namespace>\n",
          	"\t\t</m:GetRDFTriples>\n",
     		"\t</soap:Body>\n",
			"</soap:Envelope>");
	return ALL;
}

// Called during component initialization.
// function boolean init() {}

// Called during each graph run before the transform is executed. May be used to allocate and initialize resources
// required by the transform. All resources allocated within this method should be released
// by the postExecute() method.
// function void preExecute() {}

// Called only if transform() throws an exception.
// function integer transformOnError(string errorMessage, string stackTrace) {}

// Called during each graph run after the entire transform was executed. Should be used to free any resources
// allocated within the preExecute() method.
// function void postExecute() {}

// Called to return a user-defined error message when an error occurs.
// function string getMessage() {}
