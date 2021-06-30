"use strict";

module.exports.register = async server =>{
    server.route({
        method: "GET",
        path: "/api/events",
        handler: async request =>{
            try{
                const db = request.server.plugins.sql.client;
                
                const userId = "user1234";
                const res = await db.events.getEvents(userId);

                return res.recordset;
            }catch( err ){
                console.log( err );
            }
        }
    });
};