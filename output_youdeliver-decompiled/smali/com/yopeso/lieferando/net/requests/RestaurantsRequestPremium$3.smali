.class Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$3;
.super Ljava/lang/Object;
.source "RestaurantsRequestPremium.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$3;->this$0:Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/model/LocationSuggestion;)I
    .locals 2
    .param p1, "object1"    # Lcom/yopeso/lieferando/model/LocationSuggestion;
    .param p2, "object2"    # Lcom/yopeso/lieferando/model/LocationSuggestion;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    check-cast p2, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/net/requests/RestaurantsRequestPremium$3;->compare(Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/model/LocationSuggestion;)I

    move-result v0

    return v0
.end method
