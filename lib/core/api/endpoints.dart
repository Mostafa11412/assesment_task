class EndPoints {
  static const String signIn = "/api/v1/auth/signin";
  static const String categories = "/api/v1/categories";
  static const String brands = "/api/v1/brands";
  static const String products = "/api/v1/products";
  static const String signUp = "/api/v1/auth/signup";
  static const String cart = "/api/v1/cart";
  static const String favorites = "/api/v1/wishlist";
  static const String authToken = "/api/auth/tokens";
  static const String orderId = "/api/ecommerce/orders";
  static const String payment_keys = "/api/acceptance/payment_keys";

  static String cartProductId(String productId) => "/api/v1/cart/$productId";

  static String subcatogries(String categoryId) =>
      "/api/v1/categories/$categoryId/subcategories";
  static String favoritesProductId(String productId) =>
      "/api/v1/wishlist/$productId";
}
