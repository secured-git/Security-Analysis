.class final Lcom/kahuna/sdk/KahunaAnalytics$4;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/KahunaAnalytics;->setUsernameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics$4;->val$username:Ljava/lang/String;

    iput-object p2, p0, Lcom/kahuna/sdk/KahunaAnalytics$4;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 599
    const-string v0, "username"

    iget-object v1, p0, Lcom/kahuna/sdk/KahunaAnalytics$4;->val$username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2000(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "email"

    iget-object v1, p0, Lcom/kahuna/sdk/KahunaAnalytics$4;->val$email:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->access$2000(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method
