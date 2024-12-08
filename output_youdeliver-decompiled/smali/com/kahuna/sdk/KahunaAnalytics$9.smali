.class final Lcom/kahuna/sdk/KahunaAnalytics$9;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$userAttributes:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$9;->val$userAttributes:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics$9;->val$userAttributes:Ljava/util/Map;

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->access$1400(Ljava/util/Map;)V

    .line 790
    return-void
.end method
