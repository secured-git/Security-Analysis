.class public Lcom/yopeso/lieferando/util/GeoUtils;
.super Ljava/lang/Object;
.source "GeoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddressFromGeoPoints(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Address;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v8, 0x0

    .line 27
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/yopeso/lieferando/util/GeoUtils;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 28
    .local v1, "geocoder":Landroid/location/Geocoder;
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 29
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 30
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    :goto_0
    return-object v2

    .restart local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v1    # "geocoder":Landroid/location/Geocoder;
    :cond_0
    move-object v2, v8

    .line 32
    goto :goto_0

    .line 34
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    :catch_0
    move-exception v7

    .line 35
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v8

    .line 36
    goto :goto_0
.end method

.method public static getHouseNumberFromAddress(Landroid/location/Address;)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Landroid/location/Address;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "houseNr":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 87
    .end local v1    # "houseNr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 80
    .restart local v1    # "houseNr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "adr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 83
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "splitted_adr":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 85
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pl_PL"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, "de_DE"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
