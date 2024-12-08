.class public Lcom/yopeso/lieferando/net/MemCache;
.super Ljava/lang/Object;
.source "MemCache.java"


# static fields
.field private static sInstance:Lcom/yopeso/lieferando/net/MemCache;


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/net/MemCache;->mCache:Ljava/util/Map;

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/yopeso/lieferando/net/MemCache;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/yopeso/lieferando/net/MemCache;->sInstance:Lcom/yopeso/lieferando/net/MemCache;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/yopeso/lieferando/net/MemCache;

    invoke-direct {v0}, Lcom/yopeso/lieferando/net/MemCache;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/net/MemCache;->sInstance:Lcom/yopeso/lieferando/net/MemCache;

    .line 24
    :cond_0
    sget-object v0, Lcom/yopeso/lieferando/net/MemCache;->sInstance:Lcom/yopeso/lieferando/net/MemCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/net/MemCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/net/MemCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yopeso/lieferando/net/MemCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yopeso/lieferando/net/MemCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yopeso/lieferando/net/MemCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
