.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GoogleListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/GoogleData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 1466
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/LocateView;->stopAnimation()V

    .line 1467
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$15(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/android/volley/VolleyError;)V

    .line 1469
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V
    .locals 6
    .param p1, "data"    # Lcom/yopeso/lieferando/model/GoogleData;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1440
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 1441
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/LocateView;->stopAnimation()V

    .line 1443
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getPlz()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1444
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCountry()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Deutschland"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1448
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->only_local_address:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1461
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1451
    .restart local v0    # "country":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getPlz()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v1

    .line 1452
    .local v1, "plz":Ljava/lang/String;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->clearFocus()V

    .line 1455
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mSearchInput1:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iput-boolean v5, v2, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mGpsUsed:Z

    .line 1458
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$20(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/GoogleData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$GoogleListener;->onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V

    return-void
.end method
