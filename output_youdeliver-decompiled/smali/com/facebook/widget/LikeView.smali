.class public Lcom/facebook/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;,
        Lcom/facebook/widget/LikeView$HorizontalAlignment;,
        Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;,
        Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;,
        Lcom/facebook/widget/LikeView$OnErrorListener;,
        Lcom/facebook/widget/LikeView$Style;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I = null

.field private static final NO_FOREGROUND_COLOR:I = -0x1


# instance fields
.field private auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private containerView:Landroid/widget/LinearLayout;

.field private creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

.field private edgePadding:I

.field private foregroundColor:I

.field private horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field private internalPadding:I

.field private likeActionController:Lcom/facebook/internal/LikeActionController;

.field private likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

.field private likeButton:Lcom/facebook/internal/LikeButton;

.field private likeViewStyle:Lcom/facebook/widget/LikeView$Style;

.field private objectId:Ljava/lang/String;

.field private onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

.field private socialSentenceView:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->values()[Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 218
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 219
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 220
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 251
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 219
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 220
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 262
    invoke-direct {p0, p2}, Lcom/facebook/widget/LikeView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 264
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/widget/LikeView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/widget/LikeView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/widget/LikeView;Lcom/facebook/internal/LikeActionController;)V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/internal/LikeActionController;)V

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    return-void
.end method

.method static synthetic access$6(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->toggleLike()V

    return-void
.end method

.method private associateWithLikeActionController(Lcom/facebook/internal/LikeActionController;)V
    .locals 4
    .param p1, "likeActionController"    # Lcom/facebook/internal/LikeActionController;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    .line 499
    new-instance v2, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;)V

    iput-object v2, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 503
    .local v1, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 509
    return-void
.end method

.method private getAnalyticsParameters()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "style"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    invoke-virtual {v2}, Lcom/facebook/widget/LikeView$Style;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "auxiliary_position"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v2}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "horizontal_alignment"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-virtual {v2}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method public static handleOnActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 241
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/internal/LikeActionController;->handleOnActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 395
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    .line 396
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    .line 397
    iget v1, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$color;->com_facebook_likeview_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 401
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/widget/LikeView;->setBackgroundColor(I)V

    .line 403
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 404
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 407
    .local v0, "containerViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeSocialSentenceView(Landroid/content/Context;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeLikeCountView(Landroid/content/Context;)V

    .line 413
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/facebook/widget/LikeView;->addView(Landroid/view/View;)V

    .line 419
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    .line 421
    return-void
.end method

.method private initializeLikeButton(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 424
    new-instance v2, Lcom/facebook/internal/LikeButton;

    .line 426
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    :goto_0
    invoke-direct {v2, p1, v1}, Lcom/facebook/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    .line 424
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    .line 427
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    new-instance v2, Lcom/facebook/widget/LikeView$1;

    invoke-direct {v2, p0}, Lcom/facebook/widget/LikeView$1;-><init>(Lcom/facebook/widget/LikeView;)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 438
    .local v0, "buttonLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    return-void

    .line 426
    .end local v0    # "buttonLayout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeLikeCountView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 457
    new-instance v1, Lcom/facebook/internal/LikeBoxCountView;

    invoke-direct {v1, p1}, Lcom/facebook/internal/LikeBoxCountView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    .line 459
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 462
    .local v0, "likeCountViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/LikeBoxCountView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method private initializeSocialSentenceView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 443
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 444
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_likeview_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 443
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 446
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 447
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget v2, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 450
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 451
    const/4 v1, -0x2

    .line 452
    const/4 v2, -0x1

    .line 450
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    .local v0, "socialSentenceViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/android/R$styleable;->com_facebook_like_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 362
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 366
    sget v1, Lcom/facebook/android/R$styleable;->com_facebook_like_view_object_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    .line 368
    sget v1, Lcom/facebook/android/R$styleable;->com_facebook_like_view_style:I

    .line 369
    sget-object v2, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    invoke-static {v2}, Lcom/facebook/widget/LikeView$Style;->access$2(Lcom/facebook/widget/LikeView$Style;)I

    move-result v2

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 367
    invoke-static {v1}, Lcom/facebook/widget/LikeView$Style;->fromInt(I)Lcom/facebook/widget/LikeView$Style;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 370
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    if-nez v1, :cond_2

    .line 371
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported value for LikeView \'style\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_2
    sget v1, Lcom/facebook/android/R$styleable;->com_facebook_like_view_auxiliary_view_position:I

    .line 376
    sget-object v2, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-static {v2}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->access$2(Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;)I

    move-result v2

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 374
    invoke-static {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->fromInt(I)Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 377
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-nez v1, :cond_3

    .line 378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_3
    sget v1, Lcom/facebook/android/R$styleable;->com_facebook_like_view_horizontal_alignment:I

    .line 383
    sget-object v2, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-static {v2}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->access$2(Lcom/facebook/widget/LikeView$HorizontalAlignment;)I

    move-result v2

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 381
    invoke-static {v1}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->fromInt(I)Lcom/facebook/widget/LikeView$HorizontalAlignment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 384
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-nez v1, :cond_4

    .line 385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_4
    sget v1, Lcom/facebook/android/R$styleable;->com_facebook_like_view_foreground_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 390
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setObjectIdForced(Ljava/lang/String;)V
    .locals 2
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->tearDownObjectAssociations()V

    .line 484
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    .line 485
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v0, Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;-><init>(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    .line 491
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    .line 490
    invoke-static {v0, p1, v1}, Lcom/facebook/internal/LikeActionController;->getControllerForObjectId(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V

    goto :goto_0
.end method

.method private tearDownObjectAssociations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 514
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    .end local v0    # "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;->cancel()V

    .line 525
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    .line 528
    :cond_1
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    .line 529
    return-void
.end method

.method private toggleLike()V
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 468
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->getAnalyticsParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/internal/LikeActionController;->toggleLike(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 470
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private updateBoxCountCaretPosition()V
    .locals 3

    .prologue
    .line 615
    invoke-static {}, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[I

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 617
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_0

    .line 620
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_0

    .line 623
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    .line 624
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v0, v2, :cond_0

    .line 625
    sget-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 623
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_0

    .line 626
    :cond_0
    sget-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    goto :goto_1

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 547
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 548
    .local v3, "containerViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v7}, Lcom/facebook/internal/LikeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 550
    .local v2, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v8, Lcom/facebook/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v7, v8, :cond_3

    const/4 v4, 0x3

    .line 553
    .local v4, "viewGravity":I
    :goto_0
    or-int/lit8 v7, v4, 0x30

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 554
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 557
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v7, v9}, Lcom/facebook/internal/LikeBoxCountView;->setVisibility(I)V

    .line 561
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    sget-object v8, Lcom/facebook/widget/LikeView$Style;->STANDARD:Lcom/facebook/widget/LikeView$Style;

    if-ne v7, v8, :cond_5

    .line 562
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v7, :cond_5

    .line 563
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v7}, Lcom/facebook/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 564
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 574
    .local v0, "auxView":Landroid/view/View;
    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 577
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 578
    .local v1, "auxViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 580
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 581
    iget-object v8, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sget-object v9, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-ne v8, v9, :cond_0

    move v5, v6

    .line 580
    :cond_0
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 585
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sget-object v6, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-eq v5, v6, :cond_1

    .line 586
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sget-object v6, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-ne v5, v6, :cond_6

    .line 587
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v6, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v5, v6, :cond_6

    .line 589
    :cond_1
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 590
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    :goto_2
    invoke-static {}, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[I

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v6}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 612
    .end local v0    # "auxView":Landroid/view/View;
    .end local v1    # "auxViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_3
    return-void

    .line 551
    .end local v4    # "viewGravity":I
    :cond_3
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v8, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v7, v8, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    .line 565
    .restart local v4    # "viewGravity":I
    :cond_5
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    sget-object v8, Lcom/facebook/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/widget/LikeView$Style;

    if-ne v7, v8, :cond_2

    .line 566
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v7, :cond_2

    .line 567
    iget-object v7, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v7}, Lcom/facebook/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 568
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateBoxCountCaretPosition()V

    .line 569
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    .line 570
    .restart local v0    # "auxView":Landroid/view/View;
    goto :goto_1

    .line 593
    .restart local v1    # "auxViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 594
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 599
    :pswitch_0
    iget v5, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v6, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v7, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v8, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 602
    :pswitch_1
    iget v5, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v6, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v7, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v8, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 605
    :pswitch_2
    iget-object v5, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v6, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v5, v6, :cond_7

    .line 606
    iget v5, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v6, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v7, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v8, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 608
    :cond_7
    iget v5, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v6, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v7, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v8, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateLikeStateAndLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeButton;->setLikeState(Z)V

    .line 534
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v0, v2}, Lcom/facebook/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 542
    :goto_0
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 543
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeButton;->setLikeState(Z)V

    .line 538
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getOnErrorListener()Lcom/facebook/widget/LikeView$OnErrorListener;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LikeView;->setObjectId(Ljava/lang/String;)V

    .line 353
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 354
    return-void
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;)V
    .locals 1
    .param p1, "auxiliaryViewPosition"    # Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .prologue
    .line 297
    if-eqz p1, :cond_1

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-eq v0, p1, :cond_0

    .line 299
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 301
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 303
    :cond_0
    return-void

    .line 297
    :cond_1
    sget-object p1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    goto :goto_0
.end method

.method public setForegroundColor(I)V
    .locals 1
    .param p1, "foregroundColor"    # I

    .prologue
    .line 324
    iget v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    if-eq v0, p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/widget/LikeView$HorizontalAlignment;)V
    .locals 1
    .param p1, "horizontalAlignment"    # Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .prologue
    .line 310
    if-eqz p1, :cond_1

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-eq v0, p1, :cond_0

    .line 312
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 314
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 316
    :cond_0
    return-void

    .line 310
    :cond_1
    sget-object p1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    goto :goto_0
.end method

.method public setLikeViewStyle(Lcom/facebook/widget/LikeView$Style;)V
    .locals 1
    .param p1, "likeViewStyle"    # Lcom/facebook/widget/LikeView$Style;

    .prologue
    .line 284
    if-eqz p1, :cond_1

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    if-eq v0, p1, :cond_0

    .line 286
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 288
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 290
    :cond_0
    return-void

    .line 284
    :cond_1
    sget-object p1, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    goto :goto_0
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    .line 277
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LikeView$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/widget/LikeView$OnErrorListener;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

    .line 337
    return-void
.end method
