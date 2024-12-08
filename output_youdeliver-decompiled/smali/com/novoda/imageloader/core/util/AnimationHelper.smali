.class public Lcom/novoda/imageloader/core/util/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# static fields
.field public static final ANIMATION_DISABLED:I = -0x1


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/novoda/imageloader/core/util/AnimationHelper;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public loadAnimation(I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "animationRes"    # I

    .prologue
    .line 19
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/util/AnimationHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method
