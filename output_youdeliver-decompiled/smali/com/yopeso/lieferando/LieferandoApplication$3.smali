.class Lcom/yopeso/lieferando/LieferandoApplication$3;
.super Ljava/util/TimerTask;
.source "LieferandoApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/LieferandoApplication;->startActivityTransitionTimer()V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/LieferandoApplication$3;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    .line 231
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication$3;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yopeso/lieferando/LieferandoApplication;->wasInBackground:Z

    .line 234
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication$3;->this$0:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->stopService()V

    .line 235
    return-void
.end method
