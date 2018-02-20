rs.initiate(
   {
      _id: "graylog",
      version: 1,
      members: [
         { _id: 0, host : "graylog2_mongo-rs-01_1:27017" },
         { _id: 1, host : "graylog2_mongo-rs-02_1:27017" },
      ]
   }
)
