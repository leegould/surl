"use strict";

module.exports = function(sequelize, DataTypes) {
    var ShortUrl = sequelize.define("ShortUrl", {
        id: { type: DataTypes.INTEGER, autoIncrement: true, primaryKey: true },
        url: DataTypes.STRING
    }, {});

    return ShortUrl;
};