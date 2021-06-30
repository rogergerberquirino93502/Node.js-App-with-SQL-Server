"use strict";

const sql = require("./sql");

module.exports.register = async server =>{
    await server.register(sql);
};