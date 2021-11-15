class graphqlQueries{
  static String getDetails() {
    return """
           query Flutter_Github_GraphQL{
        user(login: "Ankan1998") {
          avatarUrl(size: 200)
          location
          name
          bio
          url
          email
          login
          repositories(first: 100) {
            edges {
              node {
                name
                description
                stargazerCount
                forkCount
              }
            }
            totalCount
          }
          followers(first: 100) {
            edges {
              node {
                avatarUrl(size: 200)
                name
                bio
                followers {
                  totalCount
                }
                following {
                  totalCount
                }
                repositories {
                  totalCount
                }
              }
            }
            totalCount
          }
          following(first: 100) {
            edges {
              node {
                avatarUrl(size: 200)
                name
                bio
                followers {
                  totalCount
                }
                following {
                  totalCount
                }
                repositories {
                  totalCount
                }
              }
            }
            totalCount
          }
          
        }
      }
    """;
  }
}