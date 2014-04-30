library http_status_exceptions;

part 'client_status_exceptions.dart';
part 'server_status_exceptions.dart';


/**
 * ## HTTP Status Code constants
 *
 * Constants for standard HTTP status codes including all those implemented
 * in dart:io package [HttpStatus] and more.
 *
 */
abstract class HttpStatusCode {

  // Informational
  static const int CONTINUE                         = 100;
  static const int SWITCHING_PROTOCOLS              = 101;

  // Success
  static const int OK                               = 200;
  static const int CREATED                          = 201;
  static const int ACCEPTED                         = 202;
  static const int NON_AUTHORITATIVE_INFORMATION    = 203;
  static const int NO_CONTENT                       = 204;
  static const int RESET_CONTENT                    = 205;
  static const int PARTIAL_CONTENT                  = 206;

  // Redirection
  static const int MULTIPLE_CHOICES                 = 300;
  static const int MOVED_PERMANENTLY                = 301;

  static const int FOUND                            = 302;
  static const int MOVED_TEMPORARILY                = 302; // Common alias for FOUND.

  static const int SEE_OTHER                        = 303;
  static const int NOT_MODIFIED                     = 304;
  static const int USE_PROXY                        = 305;

  static const int TEMPORARY_REDIRECT               = 307;

  // Client Errors
  static const int BAD_REQUEST                      = 400;
  static const int UNAUTHORIZED                     = 401;
  static const int PAYMENT_REQUIRED                 = 402;
  static const int FORBIDDEN                        = 403;
  static const int NOT_FOUND                        = 404;
  static const int METHOD_NOT_ALLOWED               = 405;
  static const int NOT_ACCEPTABLE                   = 406;
  static const int PROXY_AUTHENTICATION_REQUIRED    = 407;
  static const int REQUEST_TIMEOUT                  = 408;
  static const int CONFLICT                         = 409;
  static const int GONE                             = 410;
  static const int LENGTH_REQUIRED                  = 411;
  static const int PRECONDITION_FAILED              = 412;
  static const int REQUEST_ENTITY_TOO_LARGE         = 413;
  static const int REQUEST_URI_TOO_LONG             = 414;
  static const int UNSUPPORTED_MEDIA_TYPE           = 415;
  static const int REQUESTED_RANGE_NOT_SATISFIABLE  = 416;
  static const int EXPECTATION_FAILED               = 417;
  static const int TEAPOT                           = 418;

  // Server Errors
  static const int INTERNAL_SERVER_ERROR            = 500;
  static const int NOT_IMPLEMENTED                  = 501;
  static const int BAD_GATEWAY                      = 502;
  static const int SERVICE_UNAVAILABLE              = 503;
  static const int GATEWAY_TIMEOUT                  = 504;
  static const int HTTP_VERSION_NOT_SUPPORTED       = 505;
  static const int VARIANT_ALSO_NEGOTIATES          = 506;
  static const int INSUFFICIENT_STORAGE             = 507;
  static const int LOOP_DETECTED                    = 508;

  static const int NOT_EXTENDED                     = 510;
  static const int NETWORK_AUTHENTICATION_REQUIRED  = 511;
}

/**
 *## Description
 *
 * A factory which returns the correct exception subclass for the [errorCode] passed in. Additionally,
 * you can pass in a custom [message] which will be shown along with the HTTP Status Code and description
 * when [toString] is called.
 *
 *
 *## Usage
 *
 * Example:
 *
 *     BadRequestException badRequestException =
 *       new HttpStatusException(400, "Some stuff I want to see printed");
 *     print(badRequestException);
 *
 *     // Prints:
 *     // 400 Bad Request
 *     // Description: The request cannot be fulfilled due to bad syntax.
 *     // Message: Some stuff I want to see printed
 *
 * Example 2:
 *
 *     var foo  = new HttpStatusException(500, "Some stuff I want to see printed");
 *     print('''Is it an InternalServerErrorException? ${foo is InternalServerErrorException}
 *              $foo''');
 *
 *     // Prints:
 *     // Is it an InternalServerErrorException? true
 *     // 500 Internal Server Error
 *     // Description: A generic error message, given when an unexpected condition was encountered
 *     //              and no more specific message is suitable.
 *     // Message: Some stuff I want to see printed
 *
 *
 *### General Http Status Code Info
 *
 * See http://en.wikipedia.org/wiki/List_of_HTTP_status_codes for more including non-standard codes.
 *
 *
 *#### 4xx Client Error
 *
 * The 4xx class of status code is intended for cases in which the client seems to have errored.
 * Except when responding to a HEAD request, the server should include an entity containing an explanation
 * of the error situation, and whether it is a temporary or permanent condition. These status codes are
 * applicable to any request method. User agents should display any included entity to the user.
 *
 *
 *#### 5xx Server Error
 *
 * The server failed to fulfill an apparently valid request. Response status codes beginning with the digit
 * "5" indicate cases in which the server is aware that it has encountered an error or is otherwise incapable
 * of performing the request. Except when responding to a HEAD request, the server should include an entity
 * containing an explanation of the error situation, and indicate whether it is a temporary or permanent condition.
 * Likewise, user agents should display any included entity to the user. These response codes are applicable to
 * any request method.
 *
 *
 *
 */
abstract class HttpStatusException implements Exception {

  factory HttpStatusException(int errorCode, [String message]) {

    switch (errorCode) {
      //4xx Client Codes
      case HttpStatusCode.BAD_REQUEST:
        return new BadRequestException(message);
      case HttpStatusCode.UNAUTHORIZED:
        return new UnauthorizedException(message);
      case HttpStatusCode.PAYMENT_REQUIRED:
        return new PaymentRequiredException(message);
      case HttpStatusCode.FORBIDDEN:
        return new ForbiddenException(message);
      case HttpStatusCode.NOT_FOUND:
        return new NotFoundException(message);
      case HttpStatusCode.METHOD_NOT_ALLOWED:
        return new MethodNotAllowedException(message);
      case HttpStatusCode.NOT_ACCEPTABLE:
        return new NotAcceptableException(message);
      case HttpStatusCode.PROXY_AUTHENTICATION_REQUIRED:
        return new ProxyAuthRequiredException(message);
      case HttpStatusCode.REQUEST_TIMEOUT:
        return new RequestTimeoutException(message);
      case HttpStatusCode.CONFLICT:
        return new ConflictException(message);
      case HttpStatusCode.GONE:
        return new GoneException(message);
      case HttpStatusCode.LENGTH_REQUIRED:
        return new LengthRequiredException(message);
      case HttpStatusCode.PRECONDITION_FAILED:
        return new PreconditionFailedException(message);
      case HttpStatusCode.REQUEST_ENTITY_TOO_LARGE:
        return new RequestEntityTooLargeException(message);
      case HttpStatusCode.REQUEST_URI_TOO_LONG:
        return new RequestUriTooLongException(message);
      case HttpStatusCode.UNSUPPORTED_MEDIA_TYPE:
        return new UnsupportedMediaTypeException(message);
      case HttpStatusCode.REQUESTED_RANGE_NOT_SATISFIABLE:
        return new RequestedRangeNotSatisfiableException(message);
      case HttpStatusCode.EXPECTATION_FAILED:
        return new ExpectationFailedException(message);
      case HttpStatusCode.TEAPOT:
        return new IamTeapotException(message);

      //5xx Server Codes
      case HttpStatusCode.INTERNAL_SERVER_ERROR:
        return new InternalServerErrorException(message);
      case HttpStatusCode.NOT_IMPLEMENTED:
        return new NotImplementedException(message);
      case HttpStatusCode.BAD_GATEWAY:
        return new BadGatewayException(message);
      case HttpStatusCode.SERVICE_UNAVAILABLE:
        return new ServiceUnavailableException(message);
      case HttpStatusCode.GATEWAY_TIMEOUT:
        return new GatewayTimeoutException(message);
      case HttpStatusCode.HTTP_VERSION_NOT_SUPPORTED:
        return new HttpVersionNotSupportedException(message);
      case HttpStatusCode.VARIANT_ALSO_NEGOTIATES:
        return new VariantAlsoNegotiatesException(message);
      case HttpStatusCode.INSUFFICIENT_STORAGE:
        return new InsufficientStorageException(message);
      case HttpStatusCode.LOOP_DETECTED:
        return new LoopDetectedException(message);
      case HttpStatusCode.NOT_EXTENDED:
        return new NotExtendedException();
      case HttpStatusCode.NETWORK_AUTHENTICATION_REQUIRED:
        return new NetworkAuthRequiredException(message);
    }
  }
}