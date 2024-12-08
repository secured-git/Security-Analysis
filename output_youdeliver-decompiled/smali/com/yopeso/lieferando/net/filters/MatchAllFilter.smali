.class public Lcom/yopeso/lieferando/net/filters/MatchAllFilter;
.super Ljava/lang/Object;
.source "MatchAllFilter.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 15
    .local p1, "arg0":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/4 v0, 0x1

    return v0
.end method
