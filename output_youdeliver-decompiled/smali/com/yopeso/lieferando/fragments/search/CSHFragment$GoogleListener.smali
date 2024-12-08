.class public Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;
.super Ljava/lang/Object;
.source "CSHFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 687
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 688
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/LocateView;->stopAnimation()V

    .line 690
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V
    .locals 7
    .param p1, "data"    # Lcom/yopeso/lieferando/model/GoogleData;

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 618
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/LocateView;->setEnabled(Z)V

    .line 619
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocateView:Lcom/yopeso/lieferando/view/LocateView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/LocateView;->stopAnimation()V

    .line 621
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iput-boolean v4, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    .line 622
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iput-boolean v4, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    .line 623
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 626
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->isAddress:Z

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchRestaurantBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 633
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setVisibility(I)V

    .line 634
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iput-object v6, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->ls:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 638
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 639
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 640
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iput-object v6, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    .line 641
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iput-object v6, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    .line 643
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCityAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 644
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCountry()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "country":Ljava/lang/String;
    const-class v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "COUNTRY:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 647
    if-eqz v0, :cond_3

    const-string v1, "Poland"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Polska"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 649
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->only_local_address:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 681
    .end local v0    # "country":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setMarginTop()V

    .line 682
    return-void

    .line 654
    .restart local v0    # "country":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCityAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    .line 655
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getStreetAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    .line 657
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->performCityRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "Germany"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Deutschland"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 665
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->only_local_address:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 670
    :cond_5
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCityAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getStreetAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    .line 673
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsCity:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->performCityRequest(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/GoogleData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$GoogleListener;->onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V

    return-void
.end method
