.class Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "RestaurantsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;->parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Opening;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequest$2;->this$0:Lcom/yopeso/lieferando/net/requests/RestaurantsRequest;

    .line 70
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
