.class Lcom/yopeso/lieferando/net/requests/StreetRequestPL$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "StreetRequestPL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/net/requests/StreetRequestPL;->parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yopeso/lieferando/model/user/Street;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/net/requests/StreetRequestPL;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/net/requests/StreetRequestPL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/StreetRequestPL$1;->this$0:Lcom/yopeso/lieferando/net/requests/StreetRequestPL;

    .line 44
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
