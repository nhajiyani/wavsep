<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remote File Inclusion Test Case</title>
</head>
<body>

	<%@ include file="include.jsp"%>

	<%
		//*** Re-define Default Exposure Variables - Per Page ***

		//CONTEXT_STREAM, FILE_CLASS, URL_CLASS, FTP_CLASS, INCLUDE, REDIRECT, FORWARD
		fileAccessMethod = FileAccessMethod.URL_CLASS;

		//NONE, WHITE_LIST,	LOCAL_FOLDER_ONLY, PERMISSIONS, 
		//UNIX_TRAVESAL_INPUT_VALIDATION, UNIX_TRAVESAL_INPUT_REMOVAL, 
		//WINDOWS_TRAVESAL_INPUT_VALIDATION, WINDOWS_TRAVESAL_INPUT_REMOVAL,
		//SLASH_INPUT_VALIDATION, SLASH_INPUT_REMOVAL,
		//BACKSLASH_INPUT_VALIDATION, BACKSLASH_INPUT_REMOVAL,
		//HTTP_INPUT_VALIDATION,HTTP_INPUT_REMOVAL
		accessRestriction = FileAccessRestriction.NONE;

		//FULL_PATH_INPUT, RELATIVE_INPUT, INVALID_INPUT , EMPTY_INPUT
		defaultInputType = DefaultInputType.EMPTY_INPUT;

		//FULL_FILENAME, FILENAME_ONLY, DIRECTORY, EXTENSION
		injectionContext = FileInjectionContext.FULL_FILENAME;

		//ANY, NONE, SLASH_PREFIX, BACKSLASH_PREFIX, 
		//FTP_DIRECTIVE, HTTP_DIRECTIVE, 
		prefixRequired = PrefixRequirement.NONE;

		//WINDOWS, UNIX
		//osSimulated = OsType.WINDOWS;

		//Use the default defined in include.jsp
		//ERROR_500, ERROR_404, REDIRECT_302, ERROR_200, VALID_200, Identical_200
		//invalidResponseType = ResponseType.ERROR_200;

		//Use the default defined in include.jsp
		//CONTENT_TYPE_TEXT_HTML ("text/html"), CONTENT_TYPE_STREAM ("application/octet-stream")
		//validResposeStream = ContentConstants.CONTENT_TYPE_TEXT_HTML;

		//OS_PATH, FILE_DIRECTIVE_URL, FTP_URL, HTTP_URL 
		pathType = PathType.HTTP_URL;

		//LFI, RFI, DIRECTORY_TRAVERSAL, CODE_LFI, CODE_RFI, FALSE_POSITIVE
		vulnerability = VulnerabilityType.RFI;

	%>
	
	<%@ include file="inclusion-logic.jsp"%>