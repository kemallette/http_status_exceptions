part of http_status_exceptions;

class BadRequestException implements HttpStatusException{

  final int code = HttpStatusCode.BAD_REQUEST;

  final String title       = "Bad Request",
               description = '''The request cannot be fulfilled due to bad syntax.''',
               message;

  const BadRequestException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}


class UnauthorizedException implements HttpStatusException{

  final int code = HttpStatusCode.UNAUTHORIZED;

  final String title       = "Bad Request",
               description = '''Similar to 403 Forbidden, but specifically for use when authentication is 
                                required and has failed or has not yet been provided.''',
               message;

  const UnauthorizedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class PaymentRequiredException implements HttpStatusException{

  final int code = HttpStatusCode.PAYMENT_REQUIRED;

  final String title       = "Payment Required",
               description = '''Reserved for future use. The original intention was that this code might be 
                                used as part of some form of digital cash or micropayment scheme, but that 
                                has not happened, and this code is not usually used. YouTube uses this status 
                                if a particular IP address has made excessive requests, and requires the person 
                                to enter a CAPTCHA.''',
               message;

  const PaymentRequiredException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}


class ForbiddenException implements HttpStatusException{

  final int code = HttpStatusCode.FORBIDDEN;

  final String title       = "Forbidden",
               description = '''The request was a valid request, but the server is refusing to respond to it.
                                Unlike a 401 Unauthorized response, authenticating will make no difference.''',
               message;

  const ForbiddenException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class NotFoundException implements HttpStatusException{

  final int code = HttpStatusCode.NOT_FOUND;

  final String title       = "Not Found",
               description = '''The requested resource could not be found but may be available again in the 
                                future. Subsequent requests by the client are permissible.''',
               message;

  const NotFoundException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class MethodNotAllowedException implements HttpStatusException{

  final int code = HttpStatusCode.METHOD_NOT_ALLOWED;

  final String title       = "Method Not Allowed",
               description = '''A request was made of a resource using a request method not supported by that 
                                resource; for example, using GET on a form which requires data to be presented
                                via POST, or using PUT on a read-only resource.''',
               message;

  const MethodNotAllowedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}


class NotAcceptableException implements HttpStatusException{

  final int code = HttpStatusCode.NOT_ACCEPTABLE;

  final String title       = "Not Acceptable",
               description = '''The requested resource is only capable of generating content not acceptable 
                                according to the Accept headers sent in the request.''',
               message;

  const NotAcceptableException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class ProxyAuthRequiredException implements HttpStatusException{

  final int code = HttpStatusCode.PROXY_AUTHENTICATION_REQUIRED;

  final String title       = "Not Acceptable",
               description = '''The client must first authenticate itself with the proxy.''',
               message;

  const ProxyAuthRequiredException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class RequestTimeoutException implements HttpStatusException{

  final int code = HttpStatusCode.REQUEST_TIMEOUT;

  final String title       = "Request Timeout",
               description = '''The server timed out waiting for the request. According to W3 HTTP 
                                specifications: "The client did not produce a request within the time 
                                that the server was prepared to wait. The client MAY repeat the request 
                                without modifications at any later time.''',
               message;

  const RequestTimeoutException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class ConflictException implements HttpStatusException{

  final int code = HttpStatusCode.CONFLICT;

  final String title       = "Conflict",
               description = '''Indicates that the request could not be processed because of conflict in the 
                                request, such as an edit conflict in the case of multiple updates.''',
               message;

  const ConflictException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class GoneException implements HttpStatusException{

  final int code = HttpStatusCode.GONE;

  final String title       = "Gone",
               description = '''Indicates that the resource requested is no longer available and will not be 
                                available again. This should be used when a resource has been intentionally 
                                removed and the resource should be purged. Upon receiving a 410 status code, 
                                the client should not request the resource again in the future. Most use cases 
                                do not require clients to purge the resource, and a "404 Not Found" may be used 
                                instead.''',
               message;

  const GoneException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class LengthRequiredException implements HttpStatusException{

  final int code = HttpStatusCode.LENGTH_REQUIRED;

  final String title       = "Length Required",
               description = '''The request did not specify the length of its content, which is required by the 
                                requested resource.''',
               message;

  const LengthRequiredException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class PreconditionFailedException implements HttpStatusException{

  final int code = HttpStatusCode.PRECONDITION_FAILED;

  final String title       = "Precondition Failed",
               description = '''The server does not meet one of the preconditions that the requester put on the 
                                request.''',
               message;

  const PreconditionFailedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class RequestEntityTooLargeException implements HttpStatusException{

  final int code = HttpStatusCode.REQUEST_ENTITY_TOO_LARGE;

  final String title       = "Request Entity Too Large",
               description = '''The request is larger than the server is willing or able to process.''',
               message;

  const RequestEntityTooLargeException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class RequestUriTooLongException implements HttpStatusException{

  final int code = HttpStatusCode.REQUEST_URI_TOO_LONG;

  final String title       = "Request-URI Too Long",
               description = '''The URI provided was too long for the server to process. Often the result of 
                                too much data being encoded as a query-string of a GET request, in which case 
                                it should be converted to a POST request.''',
               message;

  const RequestUriTooLongException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class UnsupportedMediaTypeException implements HttpStatusException{

  final int code = HttpStatusCode.UNSUPPORTED_MEDIA_TYPE;

  final String title       = "Unsupported Media Type",
               description = '''The request entity has a media type which the server or resource does not support.  
                                For example, the client uploads an image as image/svg+xml, but the server requires 
                                that images use a different format.''',
               message;

  const UnsupportedMediaTypeException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class RequestedRangeNotSatisfiableException implements HttpStatusException{

  final int code = HttpStatusCode.REQUESTED_RANGE_NOT_SATISFIABLE;

  final String title       = "Requested Range Not Satisfiable",
               description = '''The client has asked for a portion of the file, but the server cannot supply 
                                that portion. For example, if the client asked for a part of the file that lies 
                                beyond the end of the file.''',
               message;

  const RequestedRangeNotSatisfiableException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class ExpectationFailedException implements HttpStatusException{

  final int code = HttpStatusCode.EXPECTATION_FAILED;

  final String title       = "Expectation Failed",
               description = '''The server cannot meet the requirements of the Expect request-header field.''',
               message;

  const ExpectationFailedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class IamTeapotException implements HttpStatusException{

  final int code = HttpStatusCode.TEAPOT;

  final String title       = "I'm a teapot (RFC 2324)",
               description = '''Seriously guys. I am. \n Thanks Wikipidia: This code was defined in 1998 as one of the traditional IETF 
                                April Fools' jokes, in RFC 2324, Hyper Text Coffee Pot Control Protocol, and is 
                                not expected to be implemented by actual HTTP servers.''',
               message;

  const IamTeapotException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}