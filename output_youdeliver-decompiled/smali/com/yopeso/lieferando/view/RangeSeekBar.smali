.class public Lcom/yopeso/lieferando/view/RangeSeekBar;
.super Landroid/widget/ImageView;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;,
        Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;,
        Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;
    }
.end annotation


# static fields
.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final DEFAULT_COLOR:I

.field public static final DEFAULT_COLOR_TA:I

.field public static final INVALID_POINTER_ID:I = 0xff


# instance fields
.field private absoluteMaxValue:F

.field private final absoluteMinValue:F

.field private barId:I

.field private final lineHeight:F

.field private listener:Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mDownMotionX:F

.field private mIsDragging:Z

.field private mRectF:Landroid/graphics/RectF;

.field private mScaledTouchSlop:I

.field mTouchProgressOffset:F

.field private normalizedMaxValue:D

.field private normalizedMinValue:D

.field private notifyWhileDragging:Z

.field private final numberType:Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;

.field private final padding:F

.field private final paint:Landroid/graphics/Paint;

.field private pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

.field private final thumbHalfHeight:F

.field private final thumbHalfWidth:F

.field private final thumbImage:Landroid/graphics/Bitmap;

.field private final thumbPressedImage:Landroid/graphics/Bitmap;

.field private final thumbWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x88

    const/4 v1, 0x0

    .line 62
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/yopeso/lieferando/view/RangeSeekBar;->DEFAULT_COLOR:I

    .line 63
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/yopeso/lieferando/view/RangeSeekBar;->DEFAULT_COLOR_TA:I

    .line 73
    return-void
.end method

.method public constructor <init>(FFLandroid/content/Context;)V
    .locals 5
    .param p1, "absoluteMinValue"    # F
    .param p2, "absoluteMaxValue"    # F
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->seek_thumb_normal:I

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->seek_thumb_pressed:I

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbWidth:F

    .line 42
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfWidth:F

    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfHeight:F

    .line 44
    const v0, 0x3e99999a    # 0.3f

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->lineHeight:F

    .line 45
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    .line 51
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    .line 53
    iput-boolean v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->notifyWhileDragging:Z

    .line 76
    const/16 v0, 0xff

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    .line 422
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    .line 101
    iput p1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    .line 102
    iput p2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    .line 104
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;->fromNumber(Ljava/lang/Number;)Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->numberType:Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;

    .line 109
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setFocusable(Z)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 111
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->init()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yopeso/lieferando/view/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yopeso/lieferando/view/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->seek_thumb_normal:I

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->seek_thumb_pressed:I

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbWidth:F

    .line 42
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfWidth:F

    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfHeight:F

    .line 44
    const v0, 0x3e99999a    # 0.3f

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->lineHeight:F

    .line 45
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    .line 51
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    .line 53
    iput-boolean v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->notifyWhileDragging:Z

    .line 76
    const/16 v0, 0xff

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    .line 422
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    .line 125
    iput v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    .line 126
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    .line 128
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;->fromNumber(Ljava/lang/Number;)Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->numberType:Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;

    .line 133
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setFocusable(Z)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 135
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->init()V

    .line 137
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 388
    :cond_0
    return-void
.end method

.method private drawThumb(FZLandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "screenCoord"    # F
    .param p2, "pressed"    # Z
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 506
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfWidth:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfHeight:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 507
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private evalPressedThumb(F)Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;
    .locals 6
    .param p1, "touchX"    # F

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "result":Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;
    iget-wide v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, p1, v4, v5}, Lcom/yopeso/lieferando/view/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v1

    .line 519
    .local v1, "minThumbPressed":Z
    iget-wide v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, p1, v4, v5}, Lcom/yopeso/lieferando/view/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v0

    .line 520
    .local v0, "maxThumbPressed":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sget-object v2, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MIN:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    .line 530
    :cond_0
    :goto_0
    return-object v2

    .line 524
    :cond_1
    sget-object v2, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MAX:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    goto :goto_0

    .line 525
    :cond_2
    if-eqz v1, :cond_3

    .line 526
    sget-object v2, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MIN:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    .line 527
    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    .line 528
    sget-object v2, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MAX:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    goto :goto_0
.end method

.method private final init()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mScaledTouchSlop:I

    .line 141
    return-void
.end method

.method private isInThumbRange(FD)Z
    .locals 2
    .param p1, "touchX"    # F
    .param p2, "normalizedThumbValue"    # D

    .prologue
    .line 544
    invoke-direct {p0, p2, p3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbHalfWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizedToScreen(D)F
    .locals 5
    .param p1, "normalizedCoord"    # D

    .prologue
    .line 605
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private normalizedToValue(D)F
    .locals 7
    .param p1, "normalized"    # D

    .prologue
    .line 579
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->numberType:Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    float-to-double v2, v1

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    iget v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    sub-float/2addr v1, v4

    float-to-double v4, v1

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar$NumberType;->toNumber(D)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 358
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 359
    .local v1, "pointerId":I
    iget v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 363
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 364
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mDownMotionX:F

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    .line 367
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private screenToNormalized(F)D
    .locals 9
    .param p1, "screenCoord"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const-wide/16 v4, 0x0

    .line 616
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getWidth()I

    move-result v2

    .line 617
    .local v2, "width":I
    int-to-float v3, v2

    iget v6, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    mul-float/2addr v6, v8

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    .line 622
    :goto_0
    return-wide v4

    .line 621
    :cond_0
    iget v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    sub-float v3, p1, v3

    int-to-float v6, v2

    iget v7, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v3, v6

    float-to-double v0, v3

    .line 622
    .local v0, "result":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_0
.end method

.method private final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 371
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 373
    .local v1, "x":F
    sget-object v2, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MIN:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v2, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MAX:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method private valueToNormalized(F)D
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 590
    const/4 v0, 0x0

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 592
    const-wide/16 v0, 0x0

    .line 594
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_0
.end method


# virtual methods
.method public getAbsoluteMaxValue()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    return v0
.end method

.method public getAbsoluteMinValue()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    return v0
.end method

.method public getBarId()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->barId:I

    return v0
.end method

.method public getSelectedMaxValue()F
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedToValue(D)F

    move-result v0

    return v0
.end method

.method public getSelectedMinValue()F
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedToValue(D)F

    move-result v0

    return v0
.end method

.method public isNotifyWhileDragging()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->notifyWhileDragging:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 429
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 435
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 436
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->lineHeight:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 437
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->padding:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 438
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->lineHeight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 440
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 443
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 446
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    iget-wide v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v2, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 447
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    iget-wide v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v2, v3}, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 450
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/yopeso/lieferando/view/RangeSeekBar;->DEFAULT_COLOR_TA:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 460
    iget-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sget-object v1, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MIN:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V

    .line 463
    iget-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sget-object v1, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->MAX:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 455
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/yopeso/lieferando/view/RangeSeekBar;->DEFAULT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 410
    monitor-enter p0

    const/16 v1, 0xc8

    .line 411
    .local v1, "width":I
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 415
    .local v0, "height":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 418
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    .line 410
    .end local v0    # "height":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mIsDragging:Z

    .line 395
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mIsDragging:Z

    .line 403
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 352
    :goto_0
    return v4

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 268
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v4, v5

    .line 352
    goto :goto_0

    .line 272
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    .line 273
    iget v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 274
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mDownMotionX:F

    .line 276
    iget v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mDownMotionX:F

    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/view/RangeSeekBar;->evalPressedThumb(F)Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    move-result-object v4

    iput-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    .line 279
    iget-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    if-nez v4, :cond_2

    .line 280
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setPressed(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 284
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->onStartTrackingTouch()V

    .line 285
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 286
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 290
    .end local v2    # "pointerIndex":I
    :pswitch_2
    iget-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    if-eqz v4, :cond_1

    .line 292
    iget-boolean v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_4

    .line 293
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 308
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->notifyWhileDragging:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->listener:Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_1

    .line 309
    iget-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->listener:Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getSelectedMinValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getSelectedMaxValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, p0, v6, v7}, Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/yopeso/lieferando/view/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 296
    :cond_4
    iget v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 297
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 299
    .local v3, "x":F
    iget v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mDownMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 300
    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setPressed(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 302
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->onStartTrackingTouch()V

    .line 303
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 304
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_2

    .line 314
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    :pswitch_3
    iget-boolean v6, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_5

    .line 315
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 316
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->onStopTrackingTouch()V

    .line 317
    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setPressed(Z)V

    .line 326
    :goto_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->pressedThumb:Lcom/yopeso/lieferando/view/RangeSeekBar$Thumb;

    .line 327
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 328
    iget-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->listener:Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_1

    .line 329
    iget-object v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->listener:Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getSelectedMinValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->getSelectedMaxValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, p0, v6, v7}, Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/yopeso/lieferando/view/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 321
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->onStartTrackingTouch()V

    .line 322
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 323
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 333
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 335
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mDownMotionX:F

    .line 336
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mActivePointerId:I

    .line 337
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 341
    .end local v1    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 342
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 345
    :pswitch_6
    iget-boolean v6, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_6

    .line 346
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->onStopTrackingTouch()V

    .line 347
    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setPressed(Z)V

    .line 349
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setAbsoluteMaxValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 178
    iput p1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    .line 179
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 180
    return-void
.end method

.method public setBarId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->barId:I

    .line 184
    return-void
.end method

.method public setNormalizedMaxValue(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 567
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    .line 568
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 569
    return-void
.end method

.method public setNormalizedMinValue(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 555
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMaxValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->normalizedMinValue:D

    .line 556
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/RangeSeekBar;->invalidate()V

    .line 557
    return-void
.end method

.method public setNotifyWhileDragging(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->notifyWhileDragging:Z

    .line 155
    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "listener":Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;, "Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->listener:Lcom/yopeso/lieferando/view/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 253
    return-void
.end method

.method public setSelectedMaxValue(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 237
    const/4 v0, 0x0

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 238
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->valueToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method public setSelectedMinValue(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 210
    const/4 v0, 0x0

    iget v1, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMaxValue:F

    iget v2, p0, Lcom/yopeso/lieferando/view/RangeSeekBar;->absoluteMinValue:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 211
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->valueToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/view/RangeSeekBar;->setNormalizedMinValue(D)V

    goto :goto_0
.end method
