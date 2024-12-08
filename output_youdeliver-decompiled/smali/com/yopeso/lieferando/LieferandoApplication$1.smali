.class Lcom/yopeso/lieferando/LieferandoApplication$1;
.super Ljava/lang/Object;
.source "LieferandoApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/LieferandoApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/LieferandoApplication;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/LieferandoApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/LieferandoApplication$1;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 256
    new-instance v0, Lcom/yopeso/lieferando/net/requests/PrintersRequest;

    new-instance v1, Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;

    iget-object v2, p0, Lcom/yopeso/lieferando/LieferandoApplication$1;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;-><init>(Lcom/yopeso/lieferando/LieferandoApplication;Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;)V

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/net/requests/PrintersRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    .line 257
    .local v0, "request":Lcom/yopeso/lieferando/net/requests/base/JsonRequest;, "Lcom/yopeso/lieferando/net/requests/base/JsonRequest<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->setShouldCache(Z)V

    .line 258
    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication$1;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->access$0(Lcom/yopeso/lieferando/LieferandoApplication;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 259
    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication$1;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->access$1(Lcom/yopeso/lieferando/LieferandoApplication;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/LieferandoApplication$1;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    iget-object v2, v2, Lcom/yopeso/lieferando/LieferandoApplication;->mStatusChecker:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method
