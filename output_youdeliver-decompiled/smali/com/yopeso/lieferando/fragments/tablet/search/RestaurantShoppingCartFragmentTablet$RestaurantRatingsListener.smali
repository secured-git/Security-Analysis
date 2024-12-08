.class Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;
.super Ljava/lang/Object;
.source "RestaurantShoppingCartFragmentTablet.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestaurantRatingsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Reviews;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$4(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/android/volley/VolleyError;)V

    .line 224
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Reviews;)V
    .locals 4
    .param p1, "reviews"    # Lcom/yopeso/lieferando/model/restaurant/Reviews;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    new-instance v1, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->comment_item:I

    invoke-direct {v1, v2, v3, p1}, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;-><init>(Landroid/content/Context;ILcom/yopeso/lieferando/model/restaurant/Reviews;)V

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$1(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$2(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;->access$3(Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet;)Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/RestaurantShoppingCartFragmentTablet$RestaurantRatingsListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Reviews;)V

    return-void
.end method
