rs.initiate(
   {
      _id: "graylog",
      version: 1,
      members: [
         { _id: 0, host : "mongodb_mongo-rs-01_1:27017" },
         { _id: 1, host : "mongodb_mongo-rs-02_1:27017" },
         { _id: 2, host : "mongodb_mongo-rs-03_1:27017" }
      ]
   }
)
