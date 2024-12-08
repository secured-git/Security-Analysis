.class Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;
.super Ljava/lang/Object;
.source "CSHFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setupCSH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;)Lcom/yopeso/lieferando/fragments/search/CSHFragment;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 14
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 296
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->timer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 298
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->timer:Ljava/util/Timer;

    .line 299
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->timer:Ljava/util/Timer;

    new-instance v7, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;

    invoke-direct {v7, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;)V

    .line 311
    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget v8, v8, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->delayInMillis:I

    int-to-long v8, v8

    .line 299
    invoke-virtual {v5, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 313
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "typed":Ljava/lang/String;
    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 315
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-lt v5, v8, :cond_1

    .line 333
    :goto_1
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getHouseNumber()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v5

    if-eq v5, v11, :cond_3

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 334
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v5, :cond_0

    .line 335
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setClickable(Z)V

    .line 358
    .end local v4    # "typed":Ljava/lang/String;
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 359
    return-void

    .line 315
    .restart local v4    # "typed":Ljava/lang/String;
    :cond_1
    aget-object v2, v7, v5

    .line 316
    .local v2, "token":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "tokenSegment":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "temp":Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 320
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v9, v9, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v9, v4}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 321
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v9, v9, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 322
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v9, v9, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 329
    .end local v1    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 315
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 325
    .restart local v1    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v9, v9, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 326
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v9, v9, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 327
    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v9, v9, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 341
    .end local v1    # "temp":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "tokenSegment":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    .line 345
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2

    .line 348
    :cond_4
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 349
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5, v11}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setCityId(I)V

    .line 350
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5, v10}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 351
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 355
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v5, v5, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 290
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 286
    return-void
.end method
