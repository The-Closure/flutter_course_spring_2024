String postSchema = r'''
query {
  post(id: 1) {
    id
    title
    body
  }
}
''';