"use strict";

module.exports = function(sequelize, DataTypes) {
    var SUrl = sequelize.define("SUrl", {
        id: DataTypes.INTEGER,
        url: DataTypes.STRING
    }, {});

    return SUrl;
};