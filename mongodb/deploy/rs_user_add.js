db.getSiblingDB("admin").createUser(
  {
    "user" : "rsAdmin",
    "pwd" : "rs4dm1n",
    roles: [ { "role" : "clusterAdmin", "db" : "admin" } ]
  }
)
