.class Lcom/facebook/internal/LikeActionController$4;
.super Landroid/content/BroadcastReceiver;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController;->registerSessionBroadcastReceivers(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "receiverContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 278
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$13()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    const-string v4, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    const/4 v2, 0x0

    .line 288
    .local v2, "shouldClearDisk":Z
    :goto_1
    invoke-static {v3}, Lcom/facebook/internal/LikeActionController;->access$14(Z)V

    .line 291
    move-object v1, p1

    .line 292
    .local v1, "broadcastContext":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$15()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/facebook/internal/LikeActionController$4$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/facebook/internal/LikeActionController$4$1;-><init>(Lcom/facebook/internal/LikeActionController$4;ZLandroid/content/Context;)V

    .line 317
    const-wide/16 v6, 0x64

    .line 292
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v1    # "broadcastContext":Landroid/content/Context;
    .end local v2    # "shouldClearDisk":Z
    :cond_1
    move v2, v3

    .line 283
    goto :goto_1
.end method
