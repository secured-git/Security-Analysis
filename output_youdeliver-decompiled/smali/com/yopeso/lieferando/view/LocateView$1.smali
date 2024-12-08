.class Lcom/yopeso/lieferando/view/LocateView$1;
.super Ljava/util/TimerTask;
.source "LocateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/LocateView;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/view/LocateView;

.field private final synthetic val$isTablet:Z


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/LocateView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/LocateView$1;->this$0:Lcom/yopeso/lieferando/view/LocateView;

    iput-boolean p2, p0, Lcom/yopeso/lieferando/view/LocateView$1;->val$isTablet:Z

    .line 42
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/LocateView$1;)Lcom/yopeso/lieferando/view/LocateView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1;->this$0:Lcom/yopeso/lieferando/view/LocateView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1;->this$0:Lcom/yopeso/lieferando/view/LocateView;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView;->access$0(Lcom/yopeso/lieferando/view/LocateView;)Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;->SEARCHING:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1;->this$0:Lcom/yopeso/lieferando/view/LocateView;

    sget-object v1, Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;->FOUND:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->access$1(Lcom/yopeso/lieferando/view/LocateView;Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;)V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1;->this$0:Lcom/yopeso/lieferando/view/LocateView;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/LocateView;->access$2(Lcom/yopeso/lieferando/view/LocateView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/view/LocateView$1$1;

    iget-boolean v2, p0, Lcom/yopeso/lieferando/view/LocateView$1;->val$isTablet:Z

    invoke-direct {v1, p0, v2}, Lcom/yopeso/lieferando/view/LocateView$1$1;-><init>(Lcom/yopeso/lieferando/view/LocateView$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView$1;->this$0:Lcom/yopeso/lieferando/view/LocateView;

    sget-object v1, Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;->SEARCHING:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->access$1(Lcom/yopeso/lieferando/view/LocateView;Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;)V

    goto :goto_0
.end method
