
import 'dart:convert';

TokenModel tokenModelFromJson(String str) => TokenModel.fromJson(json.decode(str));

String tokenModelToJson(TokenModel data) => json.encode(data.toJson());

class TokenModel {
    Data? data;
    bool? success;
    String? message;

    TokenModel({
        this.data,
        this.success,
        this.message,
    });

    factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        success: json["success"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "success": success,
        "message": message,
    };
}

class Data {
    String? token;
    DateTime? expiration;
    String? refreshToken;
    DateTime? refreshTokenDate;
    MCapiuser? mCapiuser;
    MCdbtmp? mCdbtmp;

    Data({
        this.token,
        this.expiration,
        this.refreshToken,
        this.refreshTokenDate,
        this.mCapiuser,
        this.mCdbtmp,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        expiration: json["expiration"] == null ? null : DateTime.parse(json["expiration"]),
        refreshToken: json["refreshToken"],
        refreshTokenDate: json["refreshTokenDate_"] == null ? null : DateTime.parse(json["refreshTokenDate_"]),
        mCapiuser: json["m_CAPIUSER"] == null ? null : MCapiuser.fromJson(json["m_CAPIUSER"]),
        mCdbtmp: json["m_CDBTMP"] == null ? null : MCdbtmp.fromJson(json["m_CDBTMP"]),
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "expiration": expiration?.toIso8601String(),
        "refreshToken": refreshToken,
        "refreshTokenDate_": refreshTokenDate?.toIso8601String(),
        "m_CAPIUSER": mCapiuser?.toJson(),
        "m_CDBTMP": mCdbtmp?.toJson(),
    };
}

class MCapiuser {
    int? id;
    int? nr;
    String? name;
    String? username;
    String? usersurname;
    dynamic email;
    dynamic keYMd5;
    String? passwordsalt;
    String? passwordhash;
    dynamic keY;
    bool? status;
    int? firmnr;
    String? refreshtoken;
    DateTime? refreshtokenenddatE;

    MCapiuser({
        this.id,
        this.nr,
        this.name,
        this.username,
        this.usersurname,
        this.email,
        this.keYMd5,
        this.passwordsalt,
        this.passwordhash,
        this.keY,
        this.status,
        this.firmnr,
        this.refreshtoken,
        this.refreshtokenenddatE,
    });

    factory MCapiuser.fromJson(Map<String, dynamic> json) => MCapiuser(
        id: json["id"],
        nr: json["nr"],
        name: json["name"],
        username: json["username"],
        usersurname: json["usersurname"],
        email: json["email"],
        keYMd5: json["keY_MD5"],
        passwordsalt: json["passwordsalt"],
        passwordhash: json["passwordhash"],
        keY: json["keY_"],
        status: json["status"],
        firmnr: json["firmnr"],
        refreshtoken: json["refreshtoken"],
        refreshtokenenddatE: json["refreshtokenenddatE_"] == null ? null : DateTime.parse(json["refreshtokenenddatE_"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nr": nr,
        "name": name,
        "username": username,
        "usersurname": usersurname,
        "email": email,
        "keY_MD5": keYMd5,
        "passwordsalt": passwordsalt,
        "passwordhash": passwordhash,
        "keY_": keY,
        "status": status,
        "firmnr": firmnr,
        "refreshtoken": refreshtoken,
        "refreshtokenenddatE_": refreshtokenenddatE?.toIso8601String(),
    };
}

class MCdbtmp {
    int? id;
    int? modulE;
    int? infotype;
    int? objid;
    int? instid;
    dynamic favorite;

    MCdbtmp({
        this.id,
        this.modulE,
        this.infotype,
        this.objid,
        this.instid,
        this.favorite,
    });

    factory MCdbtmp.fromJson(Map<String, dynamic> json) => MCdbtmp(
        id: json["id"],
        modulE: json["modulE_"],
        infotype: json["infotype"],
        objid: json["objid"],
        instid: json["instid"],
        favorite: json["favorite"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "modulE_": modulE,
        "infotype": infotype,
        "objid": objid,
        "instid": instid,
        "favorite": favorite,
    };
}
