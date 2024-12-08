.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;
.super Ljava/lang/Object;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v7}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 283
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v7}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "email_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v7}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$3(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "service_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v7}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$4(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "ort_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v7}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$5(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "street_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v7}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$6(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "hausnr_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v7}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$7(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "comment_val":Ljava/lang/String;
    const-string v4, ""

    .line 254
    .local v4, "params":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v7

    invoke-interface {v7}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "oid=00Db0000000IRGm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&lead_source=Kundenempfehlung - App"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v7

    invoke-interface {v7}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000001Kmbd=PL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&company="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000001Kmbc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000001Kmbg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000001Kmbe="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000002qkYU="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&description="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000004espt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iget-object v8, v8, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/yopeso/lieferando/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iget-object v7, v7, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

    invoke-interface {v7, v4}, Lcom/yopeso/lieferando/callback/IRestaurantListCallback;->onProposeClickNew(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "oid=00Dg0000001q6EA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 264
    :cond_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v7

    invoke-interface {v7}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000009NzOv=lieferservice.de"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    goto/16 :goto_2

    .line 268
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000001Kmbd=DE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method
