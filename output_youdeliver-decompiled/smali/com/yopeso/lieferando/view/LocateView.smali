.class public Lcom/yopeso/lieferando/view/LocateView;
.super Landroid/widget/ImageView;
.source "LocateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;
    }
.end annotation


# instance fields
.field private isTablet:Z

.field private mDisplayType:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;->SEARCHING:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mDisplayType:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget-object v0, Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;->SEARCHING:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mDisplayType:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/LocateView;)Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mDisplayType:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/view/LocateView;Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yopeso/lieferando/view/LocateView;->mDisplayType:Lcom/yopeso/lieferando/view/LocateView$DISPLAY_TYPE;

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/view/LocateView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public startAnimation(Z)V
    .locals 6
    .param p1, "isTablet"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/yopeso/lieferando/view/LocateView;->isTablet:Z

    .line 38
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 41
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mTimer:Ljava/util/Timer;

    .line 42
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/yopeso/lieferando/view/LocateView$1;

    invoke-direct {v1, p0, p1}, Lcom/yopeso/lieferando/view/LocateView$1;-><init>(Lcom/yopeso/lieferando/view/LocateView;Z)V

    .line 69
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    .line 42
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 70
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/view/LocateView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/LocateView;->isTablet:Z

    if-eqz v0, :cond_1

    .line 77
    sget v0, Lcom/yopeso/lieferando/R$drawable;->location_found:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    sget v0, Lcom/yopeso/lieferando/R$drawable;->location_icon:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/LocateView;->setImageResource(I)V

    goto :goto_0
.end method
