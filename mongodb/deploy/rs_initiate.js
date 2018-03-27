rs.initiate(
   {
      _id: "rs0",
      version: 1,
      members: [
         { _id: 0, host : "mongodb_mongo-rs0-01_1:27017" },
         { _id: 1, host : "mongodb_mongo-rs0-02_1:27017" },
         { _id: 2, host : "mongodb_mongo-rs0-03_1:27017" }
      ]
   }
)
