import 'package:fgql/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphMain extends StatefulWidget {
  //const GraphMain({ Key? key }) : super(key: key);
  const GraphMain({Key key, this.access_token}) : super(key: key);

  final String access_token;

  @override
  _GraphMainState createState() => _GraphMainState();
}

class _GraphMainState extends State<GraphMain> {
  @override
  Widget build(BuildContext context) {
    // httplink conatins the api endpoint
    final HttpLink httplink = HttpLink("https://api.github.com/graphql",
        defaultHeaders: {"authorization": "Bearer ${widget.access_token}"});

    // Adding listeners
    ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
        GraphQLClient(link: httplink, cache: GraphQLCache()));
    
    return GraphQLProvider(
      client: client,
      child: HomeScreen()
    );
  }
}
