// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';

// import '../../core/widgets/alert/network_alert_view.dart';
// import '../../flavors/build_config.dart';

// class NetworkAlertIgnore {
//   final String path;
//   final String method;

//   NetworkAlertIgnore({required this.path, required this.method});

//   @override
//   String toString() {
//     return method + path;
//   }
// }

// class ApiPath {
//   static const String createReport = '/report/inspection';
//   static const String postMethod = 'POST';

//   static List<NetworkAlertIgnore> ignorePaths = [
//     NetworkAlertIgnore(path: createReport, method: postMethod)
//   ];
//   static List<String> get ignorePathStrings =>
//       ignorePaths.map((e) => e.toString()).toList();
// }

// class ApiHelper {
//   final logger = BuildConfig.instance.config.logger;
//   static const int timeoutDuration = 10;
//   final _dio = Dio();
//   Future<Response> _get({
//     required String path,
//     required Map<String, dynamic>? parameters,
//   }) async {
//     if (await isNotConnected()) {
//       handleNetworkIssue(path: path);
//       throw NetworkException();
//     }
//     final Map<String, String> headers = _getHeaders('');
//     try {
//       return await _dio
//           .get(
//               _getUri(
//                 path,
//                 queryParameters: parameters,
//               ).toString(),
//               options: Options(headers: headers))
//           .timeout(const Duration(seconds: timeoutDuration));
//     } catch (e) {
//       logger.e('GET ${_getUri(path, queryParameters: parameters)}');
//       throw Exception('exception in GET HTTP request. $e');
//     }
//   }

//   Future<Response> _post({
//     required String path,
//     required dynamic data,
//   }) async {
//     if (await isNotConnected()) {
//       if (ApiPath.ignorePathStrings.contains(ApiPath.postMethod + path)) {
//         throw const SocketException('Should save data in local');
//       }
//       handleNetworkIssue(path: path);
//       throw NetworkException();
//     }
//     final Map<String, String> headers = _getHeaders('');
//     try {
//       return await _dio
//           .post(_getUri(path).toString(), options: Options(headers: headers))
//           .timeout(const Duration(seconds: timeoutDuration));
//     } on Exception catch (e) {
//       logger.e('POST ${_getUri(path)}, ${jsonEncode(data)}');
//       if (e is SocketException || e is TimeoutException) {
//         if (path.contains(ApiPath.createReport)) {
//           rethrow;
//         }
//       }
//       throw Exception('exception in POST HTTP request. $e');
//     }
//   }

//   // Future<dynamic> post({
//   //   required String path,
//   //   required dynamic data,
//   // }) async {
//   //   assert(path.startsWith('/'), 'path should start with /');
//   //   logger.d('POST $path $data');
//   //   final response = await _post(path: path, data: data);
//   //   if (response.statusCode! < 200 || response.statusCode! >= 300) {
//   //     throw ApiException(
//   //       httpCode: response.statusCode!,
//   //       status: response.toString(),
//   //       message: getMessageFromResponse(response),
//   //     );
//   //   }
//   //   final body = utf8.decode(response.bodyBytes);
//   //   logger.d(body);
//   //   final json = jsonDecode(body);
//   //   final status = json['status'];
//   //   if (status != true) {
//   //     logger.e('status is not true. $json');
//   //   }
//   //   final message = json['message'];
//   //   if (message != null) {
//   //     logger.d(message);
//   //   }
//   //   return json['data'];
//   // }

//   Uri _getUri(String path, {Map<String, dynamic>? queryParameters}) {
//     final baseUrl = BuildConfig.instance.config.apiBaseUrl;
//     log(baseUrl);
//     final scheme = baseUrl.startsWith('https://')
//         ? 'https://'
//         : baseUrl.startsWith('http://')
//             ? 'http://'
//             : throw 'Scheme needs to be https or http.';
//     final u = baseUrl.replaceFirst(scheme, '');
//     final i = u.indexOf('/');
//     final authority = i < 0 ? u : u.substring(0, i);
//     final remainedPath = i < 0 ? '' : u.substring(i);
//     if (scheme == 'https://') {
//       return Uri.https(authority, '$remainedPath$path', queryParameters);
//     }
//     return Uri.http(authority, '$remainedPath$path', queryParameters);
//   }

//   Map<String, String> _getHeaders(String token) {
//     final Map<String, String> headers = {
//       "Content-Type": "application/json",
//       "Authorization": "Bearer $token",
//     };

//     if (token != null) {
//       headers.addAll({
//         'access-token': 'Bearer $token',
//       });
//     }

//     return headers;
//   }

//   void handleNetworkIssue({String? path}) {
//     /// Ignore some apis, to not show alert
//     if (path != null && path == ApiPath.createReport) {
//       return;
//     }
//     logger.e('=====> Network connection false');
//     NetworkAlertView.instance.show();
//   }

//   Future<bool> isNotConnected() async {
//     final connectivityResult = await (Connectivity().checkConnectivity());
//     print(connectivityResult);
//     return connectivityResult == ConnectivityResult.none;
//   }
// }

// class NetworkException {}

// class ApiException {
//   ApiException({
//     required this.httpCode,
//     required this.status,
//     required this.message,
//   });

//   final int httpCode;
//   final String status;
//   final String message;

//   @override
//   String toString() {
//     return 'ApiException(httpCode: $httpCode, status: $status, message: $message)';
//   }
// }
