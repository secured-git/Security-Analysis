.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;
.super Ljava/lang/Object;
.source "AddressInputLinearLayoutPL.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRegexTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->mRegexTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;)Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12
    .param p1, "s"    # Landroid/text/Editable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 341
    iget-object v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v6}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v6}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v6, v6, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 342
    iget-object v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->mRegexTimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 343
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->mRegexTimer:Ljava/util/Timer;

    .line 344
    iget-object v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->mRegexTimer:Ljava/util/Timer;

    new-instance v7, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8$1;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;)V

    .line 356
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v8}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$18(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)I

    move-result v8

    int-to-long v8, v8

    .line 344
    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 358
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "typed":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 360
    iget-object v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v6, v6, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 387
    .end local v4    # "typed":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 360
    .restart local v4    # "typed":Ljava/lang/String;
    :cond_1
    aget-object v2, v6, v5

    .line 361
    .local v2, "token":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "tokenSegment":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "temp":Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 365
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v8, v8, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v8, v4}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 366
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 367
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v8}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$12(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Landroid/widget/EditText;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v8, v8, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 376
    .end local v1    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 360
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 371
    .restart local v1    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v8, v8, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 372
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v9, -0x1

    iput v9, v8, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 373
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v8}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$12(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Landroid/widget/EditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v8, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v8, v8, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 381
    .end local v1    # "temp":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "tokenSegment":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v5, v5, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 382
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iput v11, v5, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 383
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v5}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$12(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v5, v5, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 334
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 330
    return-void
.end method
