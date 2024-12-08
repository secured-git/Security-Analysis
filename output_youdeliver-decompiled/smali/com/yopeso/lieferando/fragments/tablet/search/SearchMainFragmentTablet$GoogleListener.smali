.class public Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;
.super Ljava/lang/Object;
.source "SearchMainFragmentTablet.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/LocateView;->stopAnimation()V

    .line 541
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/android/volley/VolleyError;)V

    .line 543
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V
    .locals 7
    .param p1, "data"    # Lcom/yopeso/lieferando/model/GoogleData;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 518
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 519
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)Lcom/yopeso/lieferando/view/LocateView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/LocateView;->stopAnimation()V

    .line 521
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

    .line 522
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCountry()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "country":Ljava/lang/String;
    const-class v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "COUNTRY:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-eqz v0, :cond_1

    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Deutschland"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->only_local_address:I

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 535
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 529
    .restart local v0    # "country":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iput-boolean v6, v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mGpsUsed:Z

    .line 530
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getPlz()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "plz":Ljava/lang/String;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->mSearchInput:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    const/4 v3, 0x2

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$7(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/GoogleData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$GoogleListener;->onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V

    return-void
.end method
