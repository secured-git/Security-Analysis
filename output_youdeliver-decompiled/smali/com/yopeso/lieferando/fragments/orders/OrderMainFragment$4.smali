.class Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;
.super Ljava/lang/Object;
.source "OrderMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->loadRatingButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$8(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 383
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RateOrderRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->access$9(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;-><init>(Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment$RateOrderListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RateOrderRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 385
    :cond_0
    return-void
.end method
