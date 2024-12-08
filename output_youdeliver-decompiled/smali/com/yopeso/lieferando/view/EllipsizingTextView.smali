.class public Lcom/yopeso/lieferando/view/EllipsizingTextView;
.super Landroid/widget/TextView;
.source "EllipsizingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_PUNCTUATION:Ljava/util/regex/Pattern;

.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private final ellipsizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private endPunctuationPattern:Ljava/util/regex/Pattern;

.field private fullText:Ljava/lang/String;

.field private isEllipsized:Z

.field private isStale:Z

.field private lineAdditionalVerticalPadding:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private programmaticChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "[\\.,\u2026;\\:\\s]*$"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->DEFAULT_END_PUNCTUATION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 49
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    new-array v1, v4, [I

    const v2, 0x1010153

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->maxLines:I

    .line 53
    iput-boolean v4, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isStale:Z

    .line 54
    sget-object v1, Lcom/yopeso/lieferando/view/EllipsizingTextView;->DEFAULT_END_PUNCTUATION:Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->endPunctuationPattern:Ljava/util/regex/Pattern;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method

.method private createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;
    .locals 8
    .param p1, "workingText"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->lineSpacingMultiplier:F

    iget v6, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private getFullyVisibleLinesCount()I
    .locals 5

    .prologue
    .line 190
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    .line 191
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 192
    .local v0, "height":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 193
    .local v2, "lineHeight":I
    div-int v3, v0, v2

    return v3
.end method

.method private getLinesCount()I
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getFullyVisibleLinesCount()I

    move-result v0

    .line 175
    .local v0, "fullyVisibleLinesCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 181
    .end local v0    # "fullyVisibleLinesCount":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->maxLines:I

    goto :goto_0
.end method

.method private resetText()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 132
    iget-object v5, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 133
    .local v5, "workingText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 134
    .local v0, "ellipsized":Z
    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v2

    .line 135
    .local v2, "layout":Landroid/text/Layout;
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getLinesCount()I

    move-result v3

    .line 136
    .local v3, "linesCount":I
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-le v6, v3, :cond_1

    .line 138
    iget-object v6, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->fullText:Ljava/lang/String;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 139
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u2026"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-gt v6, v3, :cond_4

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->endPunctuationPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u2026"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 152
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->programmaticChange:Z

    .line 154
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iput-boolean v8, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->programmaticChange:Z

    .line 160
    :cond_2
    iput-boolean v8, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isStale:Z

    .line 161
    iget-boolean v6, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isEllipsized:Z

    if-eq v0, v6, :cond_3

    .line 162
    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isEllipsized:Z

    .line 163
    iget-object v6, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 167
    :cond_3
    return-void

    .line 140
    :cond_4
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 141
    .local v1, "lastSpace":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 144
    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 156
    .end local v1    # "lastSpace":I
    :catchall_0
    move-exception v6

    .line 157
    iput-boolean v8, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->programmaticChange:Z

    .line 158
    throw v6

    .line 163
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;

    .line 164
    .local v4, "listener":Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;
    invoke-interface {v4, v0}, Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;->ellipsizeStateChanged(Z)V

    goto :goto_1
.end method


# virtual methods
.method public addEllipsizeListener(Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public ellipsizingLastFullyVisibleLine()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->maxLines:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->maxLines:I

    return v0
.end method

.method public isEllipsized()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isEllipsized:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isStale:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->resetText()V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 111
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isStale:Z

    .line 114
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 102
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->programmaticChange:Z

    if-nez v0, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isStale:Z

    .line 106
    :cond_0
    return-void
.end method

.method public removeEllipsizeListener(Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/yopeso/lieferando/view/EllipsizingTextView$EllipsizeListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 203
    return-void
.end method

.method public setEndPunctuationPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->endPunctuationPattern:Ljava/util/regex/Pattern;

    .line 60
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 95
    iput p2, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 97
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 80
    iput p1, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->maxLines:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isStale:Z

    .line 82
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/EllipsizingTextView;->isStale:Z

    .line 121
    :cond_0
    return-void
.end method
