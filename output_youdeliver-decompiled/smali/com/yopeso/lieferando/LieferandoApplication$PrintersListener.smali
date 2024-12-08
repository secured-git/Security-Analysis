.class Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;
.super Ljava/lang/Object;
.source "LieferandoApplication.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/LieferandoApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintersListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/LieferandoApplication;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/LieferandoApplication;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/LieferandoApplication;Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;-><init>(Lcom/yopeso/lieferando/LieferandoApplication;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 284
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;->onResponse(Ljava/util/Map;)V

    return-void
.end method

.method public onResponse(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "printers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/LieferandoApplication;->setPrinters(Ljava/util/Map;)V

    .line 280
    return-void
.end method
