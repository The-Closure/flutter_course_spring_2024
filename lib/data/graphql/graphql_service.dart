import 'package:graphql/client.dart';
import 'package:graphql_flame/data/schema/graphql_schema.dart';

final _httpLink = HttpLink(
  'https://graphqlzero.almansi.me/api',
);

// final GraphQLClient client = GraphQLClient(
//   /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
//   cache: GraphQLCache(),
//   link: _httpLink,
// );

Future<GraphQLClient> getClient() async {
  /// initialize Hive and wrap the default box in a HiveStore
  final store = await HiveStore.open(path: 'my/cache/path');
  return GraphQLClient(
    /// pass the store to the cache for persistence
    cache: GraphQLCache(store: store),
    link: _httpLink,
  );
}

getData() async {
  GraphQLClient dio = await getClient();
  QueryOptions options = QueryOptions(document: gql(postSchema));

  QueryResult response =await dio.query(options);

  return response;
}
