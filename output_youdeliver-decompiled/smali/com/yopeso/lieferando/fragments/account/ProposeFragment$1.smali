.class Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;
.super Ljava/lang/Object;
.source "ProposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 136
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "email_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "service_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "ort_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "street_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$8(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "hausnr_val":Ljava/lang/String;
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "comment_val":Ljava/lang/String;
    const-string v4, ""

    .line 103
    .local v4, "params":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v7

    invoke-interface {v7}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "oid=00Db0000000IRGm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
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

    .line 110
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v7

    invoke-interface {v7}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000001Kmbd=PL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
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

    .line 121
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

    .line 122
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 123
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

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 126
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

    .line 128
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

    .line 129
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

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000004espt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/yopeso/lieferando/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    sget v9, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 134
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 135
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v7

    new-instance v8, Lcom/yopeso/lieferando/net/requests/ProposeRestaurantRequest;

    new-instance v9, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;

    iget-object v10, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;-><init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;)V

    invoke-direct {v8, v4, v9}, Lcom/yopeso/lieferando/net/requests/ProposeRestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v7, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 106
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

    .line 113
    :cond_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v7

    invoke-interface {v7}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&00Nb0000009NzOv=lieferservice.de"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    goto/16 :goto_2

    .line 117
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
