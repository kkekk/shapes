# Shapes

### Setup
Clone the repo, then:

```
bundle
rails db:migrate
rails db:seed
rails s
```

### Testing the API
No front end for this data, would have to test manually using a rest client. Some example API test through `restclient.el`
```
GET http://localhost:3000/shapes
Content-Type: application/json
{
  "shape": [3, 60, 3]
}

# create
POST http://localhost:3000/shapes
Content-Type: application/json
{
  "sides": [3,2,110],
  "angles": [1.00, 2]
}

```
