.class final Lcom/kahuna/sdk/KahunaAnalytics$12;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$count:I

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$12;->val$eventName:Ljava/lang/String;

    iput p2, p0, Lcom/kahuna/sdk/KahunaAnalytics$12;->val$count:I

    iput p3, p0, Lcom/kahuna/sdk/KahunaAnalytics$12;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 942
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v9

    .line 944
    .local v9, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-static {v9}, Lcom/kahuna/sdk/KahunaAnalytics;->access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 945
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You did not call onAppCreate() in your MainApplication\'s onCreate() method."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 948
    :cond_0
    :try_start_0
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    iget-object v1, p0, Lcom/kahuna/sdk/KahunaAnalytics$12;->val$eventName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 949
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    iget v1, p0, Lcom/kahuna/sdk/KahunaAnalytics$12;->val$count:I

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/KAEvent;->setCount(I)V

    .line 950
    iget v1, p0, Lcom/kahuna/sdk/KahunaAnalytics$12;->val$value:I

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/KAEvent;->setValue(I)V

    .line 951
    invoke-static {v9, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1300(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KAEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    .end local v0    # "event":Lcom/kahuna/sdk/KAEvent;
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v8

    .line 955
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.trackEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
