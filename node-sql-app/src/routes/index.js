"use strict";

const api = require("./api");

module.exports.register = async server =>{
    await api.register( server );

    server.route({
            method: "GET",
            path: "/",
            handler: async ( request, h) =>{
                return "Hi My name is Roger!";
            }
        });
};