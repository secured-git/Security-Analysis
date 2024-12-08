.class Lcom/yopeso/lieferando/net/requests/MealsRequest$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "MealsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/net/requests/MealsRequest;->parseResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
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
        "Ljava/lang/Long;",
        "Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/net/requests/MealsRequest;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/net/requests/MealsRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/MealsRequest$2;->this$0:Lcom/yopeso/lieferando/net/requests/MealsRequest;

    .line 60
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
