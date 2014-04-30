part of http_status_exceptions;


class InternalServerErrorException implements HttpStatusException{

  final int code = HttpStatusCode.INTERNAL_SERVER_ERROR;

  final String title       = "Internal Server Error",
               description = '''A generic error message, given when an unexpected condition was encountered 
                                and no more specific message is suitable.''',
               message;

  const InternalServerErrorException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class NotImplementedException implements HttpStatusException{

  final int code = HttpStatusCode.NOT_IMPLEMENTED;

  final String title       = "Not Implemented",
               description = '''The server either does not recognize the request method, or it lacks 
                                the ability to fulfill the request. Usually this implies future 
                                availability (e.g., a new feature of a web-service API).''',
               message;

  const NotImplementedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class BadGatewayException implements HttpStatusException{

  final int code = HttpStatusCode.BAD_GATEWAY;

  final String title       = "Bad Gateway",
               description = '''The server was acting as a gateway or proxy and received an invalid 
                                response from the upstream server.''',
               message;

  const BadGatewayException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class ServiceUnavailableException implements HttpStatusException{

  final int code = HttpStatusCode.SERVICE_UNAVAILABLE;

  final String title       = "Service Unavailable",
               description = '''The server is currently unavailable (because it is overloaded or down 
                                for maintenance). Generally, this is a temporary state.''',
               message;

  const ServiceUnavailableException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class GatewayTimeoutException implements HttpStatusException{

  final int code = HttpStatusCode.GATEWAY_TIMEOUT;

  final String title       = "Gateway Timeout",
               description = '''The server was acting as a gateway or proxy and did not receive a timely 
                                response from the upstream server.''',
               message;

  const GatewayTimeoutException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class HttpVersionNotSupportedException implements HttpStatusException{

  final int code = HttpStatusCode.HTTP_VERSION_NOT_SUPPORTED;

  final String title       = "Http Version Not Supported",
               description = '''The server does not support the HTTP protocol version used in the request.''',
               message;

  const HttpVersionNotSupportedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}


class VariantAlsoNegotiatesException implements HttpStatusException{

  final int code = HttpStatusCode.VARIANT_ALSO_NEGOTIATES;

  final String title       = "Variant Also Negotiates (RFC 2295)",
               description = '''Transparent content negotiation for the request results in a circular 
                                reference.''',
               message;

  const VariantAlsoNegotiatesException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class InsufficientStorageException implements HttpStatusException{

  final int code = HttpStatusCode.INSUFFICIENT_STORAGE;

  final String title       = "Insufficient Storage  (WebDAV; RFC 4918)",
               description = '''The server is unable to store the representation needed to complete the 
                                request.''',
               message;

  const InsufficientStorageException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class LoopDetectedException implements HttpStatusException{

  final int code = HttpStatusCode.LOOP_DETECTED;

  final String title       = "Loop Detected (WebDAV; RFC 5842)",
               description = '''The server detected an infinite loop while processing the request 
                                (sent in lieu of 208 Already Reported)''',
               message;

  const LoopDetectedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class NotExtendedException implements HttpStatusException{

  final int code = HttpStatusCode.NOT_EXTENDED;

  final String title       = "Not Extended (RFC 2774)",
               description = '''Further extensions to the request are required for the server to fulfill it.''',
               message;

  const NotExtendedException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}

class NetworkAuthRequiredException implements HttpStatusException{

  final int code = HttpStatusCode.NETWORK_AUTHENTICATION_REQUIRED;

  final String title       = "Network Authentication Required (RFC 6585)",
               description = '''The client needs to authenticate to gain network access. Intended for 
                                use by intercepting proxies used to control access to the network 
                                (e.g., "captive portals" used to require agreement to Terms of Service 
                                before granting full Internet access via a Wi-Fi hotspot).''',
               message;

  const NetworkAuthRequiredException([this.message]);

  String toString() => '''$code $title
                          Description: $description
                          Message: $message''';
}