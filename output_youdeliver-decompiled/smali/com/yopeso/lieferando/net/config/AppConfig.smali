.class public Lcom/yopeso/lieferando/net/config/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static sConfiguration:Lcom/yopeso/lieferando/net/config/IConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfig()Lcom/yopeso/lieferando/net/config/IConfig;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yopeso/lieferando/net/config/AppConfig;->sConfiguration:Lcom/yopeso/lieferando/net/config/IConfig;

    return-object v0
.end method

.method public static setup(Lcom/yopeso/lieferando/net/config/IConfig;)V
    .locals 0
    .param p0, "config"    # Lcom/yopeso/lieferando/net/config/IConfig;

    .prologue
    .line 14
    sput-object p0, Lcom/yopeso/lieferando/net/config/AppConfig;->sConfiguration:Lcom/yopeso/lieferando/net/config/IConfig;

    .line 15
    return-void
.end method
