// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:graphql/client.dart';

// import '../../core/links.dart';

// class GraphQLService {
//   late GraphQLClient _client;

//   GraphQLService() {
//     _client = GraphQLClient(link: link, cache: GraphQLCache());
//   }

//   Future<QueryResult> performQuery(
//     String query, {
//     Map<String, dynamic>? variables,
//   }) async {
//     QueryOptions options = QueryOptions(
//       document: gql(query),
//       variables: variables ?? const {},
//     );
//     final result = await _client.query(options);

//     return result;
//   }

//   Future<QueryResult> preformMutation(
//     String query, {
//     Map<String, dynamic>? variable,
//   }) async {
//     MutationOptions options = MutationOptions(
//       document: gql(query),
//       variables: variable ?? const {},
//     );
//     final result = await _client.mutate(options);
//     print(result.hasException);
//     print(result.exception);

//     return result;
//   }
// }
