import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../shared/constants/constants.dart';
import '../../models/user/user_model.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: Constants.URL_SERVICE)
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @POST('/auth/login')
  Future<UserModel> userLogin(
    @Header("Accept") String accept,
    // @Header("Content-type") String content,
    @Header("Authorization") String apiKey,
    @Body() UserModel user,
  );

  @POST('/user')
  Future<UserModel> createUser(
    @Header("Authorization") String apiKey,
    @Body() UserModel user,
  );

  // @PUT('/user/{userId}')
  // Future<String> updateUser(@Header("Authorization") String apiKey,
  //     @Path() String userId, @Body() CreateUserModel messageEdit);

  @POST('/send_confirm_email/{userId}')
  Future<String> confirmationEmail(
    @Header("Authorization") String apiKey,
    @Path() String userId,
  );
  // @GET('/user/email/{email}')
  // Future<SearchUserModel> searchUser(
  //   @Header("Authorization") String apiKey,
  //   @Path() String email,
  // );
}
