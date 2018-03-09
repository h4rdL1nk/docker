db.createUser({ 
  user: 'root', 
  pwd: 'r00t', 
  roles: [ { role: "userAdminAnyDatabase", db: "admin" } ] 
});
