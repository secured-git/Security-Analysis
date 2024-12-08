.class Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "RestaurantsRequestPremium.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;->parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$1;->this$0:Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;

    .line 52
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
