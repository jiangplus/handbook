PostType = GraphQL::ObjectType.define do
  name "Post"
  description "A blog post"

  field :id, !types.ID
  field :title, !types.String
end

QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema"

  field :post do
    type PostType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { Post.find(args["id"]) }
  end
end

Schema = GraphQL::Schema.new(query: QueryType)

# Schema.execute('query someposts {  post(id: 1) { id,title  } }')
# Schema.execute('{ post(id: 1) { id,title  }} ')

