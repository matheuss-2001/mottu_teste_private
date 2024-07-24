import 'package:get/get_connect/connect.dart';
import 'package:marvel/app/helpers/global_variables.dart';

class DetalhePersonagemApi extends GetConnect {
  @override
  void onInit() {
    super.onInit();
  }

  Future<Response<dynamic>> getDetalhePersonagem(String idPersonagem) async {
    final Map<String, String> params = Auth.getCredentials();
    final String url =
        baseUrlString("/v1/public/characters/$idPersonagem", params);
    return await get(url).timeout(Auth.timeout);
  }

  Future<Response<dynamic>> getComicsPorPersonagem(String idPersonagem) async {
    final Map<String, String> params = Auth.getCredentials();
    final String url =
        baseUrlString("/v1/public/characters/$idPersonagem/comics", params);
    return await get(url).timeout(Auth.timeout);
  }

  Future<Response<dynamic>> getEventPorPersonagem(String idPersonagem) async {
    final Map<String, String> params = Auth.getCredentials();
    final String url =
        baseUrlString("/v1/public/characters/$idPersonagem/events", params);
    return await get(url).timeout(Auth.timeout);
  }

  Future<Response<dynamic>> getSeriesPorPersonagem(String idPersonagem) async {
    final Map<String, String> params = Auth.getCredentials();
    final String url =
        baseUrlString("/v1/public/characters/$idPersonagem/series", params);
    return await get(url).timeout(Auth.timeout);
  }

  Future<Response<dynamic>> getStoriesPorPersonagem(String idPersonagem) async {
    final Map<String, String> params = Auth.getCredentials();
    final String url =
        baseUrlString("/v1/public/characters/$idPersonagem/stories", params);
    return await get(url).timeout(Auth.timeout);
  }
}
