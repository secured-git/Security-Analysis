.class Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;
.super Ljava/lang/Object;
.source "OrderSuccessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

.field private final synthetic val$rest:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->val$rest:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 130
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->val$rest:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->val$rest:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 132
    const-string v1, ""

    .line 133
    .local v1, "postText":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    sget v6, Lcom/yopeso/lieferando/R$string;->tweeterTextSend:I

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/LieferandoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.twitter.android"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "shareIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "twitter://post?message="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    invoke-virtual {v5, v2}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->startActivity(Landroid/content/Intent;)V

    .line 152
    .end local v1    # "postText":Ljava/lang/String;
    .end local v2    # "shareIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 137
    .restart local v1    # "postText":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;

    sget v6, Lcom/yopeso/lieferando/R$string;->tweeterTextSend:I

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/OrderSuccessFragment$1;->val$rest:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://twitter.com/intent/tweet?text="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "tweetUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 148
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "shareIntent":Landroid/content/Intent;
    goto :goto_1
.end method
