import 'package:fgql/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphMain extends StatefulWidget {
  //const GraphMain({ Key? key }) : super(key: key);
  //const GraphMain({Key key, this.access_token}) : super(key: key);

  @override
  _GraphMainState createState() => _GraphMainState();
}

class _GraphMainState extends State<GraphMain> {
  @override
  Widget build(BuildContext context) {
    final String access_token = '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';
    // httplink conatins the api endpoint
    final HttpLink httplink = HttpLink("https://api.github.com/graphql");
    //defaultHeaders: {"authorization": "Bearer ${access_token}"});
    final AuthLink authLink =
        AuthLink(getToken: () async => "Bearer ${access_token}");
    final Link link = authLink.concat(httplink);
    

    // Adding listeners
    ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
        GraphQLClient(link: link, cache: GraphQLCache(store: HiveStore())));

    return GraphQLProvider(client: client, child: HomeScreen());
  }
}
