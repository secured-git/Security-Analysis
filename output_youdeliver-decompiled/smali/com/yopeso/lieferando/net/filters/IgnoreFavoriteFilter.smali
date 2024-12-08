.class public Lcom/yopeso/lieferando/net/filters/IgnoreFavoriteFilter;
.super Ljava/lang/Object;
.source "IgnoreFavoriteFilter.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    instance-of v0, p1, Lcom/yopeso/lieferando/net/requests/SetFavouriteRequest;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
