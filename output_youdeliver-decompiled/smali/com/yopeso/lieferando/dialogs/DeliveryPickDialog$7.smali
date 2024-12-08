.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 404
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v6}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$1(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v6}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v6, v6, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 421
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "typed":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 423
    iget-object v6, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v6, v6, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 454
    .end local v4    # "typed":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 423
    .restart local v4    # "typed":Ljava/lang/String;
    :cond_1
    aget-object v2, v6, v5

    .line 424
    .local v2, "token":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 426
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

    .line 427
    .local v1, "temp":Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 428
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v8, v8, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v8, v4}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 429
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    .line 430
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v8, v8, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 437
    .end local v1    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 423
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 433
    .restart local v1    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v8, v8, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 434
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    const/4 v9, -0x1

    iput v9, v8, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    .line 435
    iget-object v8, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v8, v8, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 442
    .end local v1    # "temp":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "tokenSegment":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v5, v5, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5, v7}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setHouseNumber(Ljava/lang/String;)V

    .line 443
    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iput v8, v5, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    .line 444
    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$7;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v5, v5, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v5, v7}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 397
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 393
    return-void
.end method
