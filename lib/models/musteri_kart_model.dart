
import 'dart:convert';

List<MusteriKartModel> musteriKartModelFromJson(String str) => List<MusteriKartModel>.from(json.decode(str).map((x) => MusteriKartModel.fromJson(x)));

String musteriKartModelToJson(List<MusteriKartModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MusteriKartModel {
    int? id;
    String? erpcode;
    int? active;
    int? cardtype;
    String? code;
    String? definitioN;
    String? addR1;
    dynamic addR2;
    String? city;
    String? town;
    dynamic country;
    String? telnrS1;
    String? taxnr;
    String? taxoffice;
    String? tckno;
    dynamic cyphcode;
    dynamic accepteinv;

    MusteriKartModel({
        this.id,
        this.erpcode,
        this.active,
        this.cardtype,
        this.code,
        this.definitioN,
        this.addR1,
        this.addR2,
        this.city,
        this.town,
        this.country,
        this.telnrS1,
        this.taxnr,
        this.taxoffice,
        this.tckno,
        this.cyphcode,
        this.accepteinv,
    });

    factory MusteriKartModel.fromJson(Map<String, dynamic> json) => MusteriKartModel(
        id: json["id"],
        erpcode: json["erpcode"],
        active: json["active"],
        cardtype: json["cardtype"],
        code: json["code"],
        definitioN: json["definitioN_"],
        addR1: json["addR1"],
        addR2: json["addR2"],
        city: json["city"],
        town: json["town"],
        country: json["country"],
        telnrS1: json["telnrS1"],
        taxnr: json["taxnr"],
        taxoffice: json["taxoffice"],
        tckno: json["tckno"],
        cyphcode: json["cyphcode"],
        accepteinv: json["accepteinv"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "erpcode": erpcode,
        "active": active,
        "cardtype": cardtype,
        "code": code,
        "definitioN_": definitioN,
        "addR1": addR1,
        "addR2": addR2,
        "city": city,
        "town": town,
        "country": country,
        "telnrS1": telnrS1,
        "taxnr": taxnr,
        "taxoffice": taxoffice,
        "tckno": tckno,
        "cyphcode": cyphcode,
        "accepteinv": accepteinv,
    };
}
