abstract class Env {
  static const String apiUrl = String.fromEnvironment(
    "supabase_url",
  );
  static const String apiPassword = String.fromEnvironment(
    "supabase_anon_key",
  ); 
  static const String apiTokenEndpoint = String.fromEnvironment(
    "API_TOKEN_ENDPOINT",
  ); 
}
