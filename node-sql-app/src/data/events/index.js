"use strict";

const utils = require( "../utils" );

const register = async( {sql, getConnection} ) =>{
    const sqlQueries = await utils.loadSqlQueries("events");

    const getEvents = async userId =>{
        const cnx = await getConnection();
        const request = await cnx.request();
        request.input("userId", sql.VarChar(50), userId );
        return request.query( sqlQueries.getEvents);
    };
    return{
        getEvents
    };
};

module.exports = { register };