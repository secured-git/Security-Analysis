.class public Lcom/yopeso/lieferando/LieferandoApplicationPl;
.super Lcom/yopeso/lieferando/LieferandoApplication;
.source "LieferandoApplicationPl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yopeso/lieferando/LieferandoApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration()Lcom/yopeso/lieferando/net/config/IConfig;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;

    invoke-direct {v0}, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;-><init>()V

    return-object v0
.end method
