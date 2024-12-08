.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;
.super Ljava/lang/Object;
.source "RestaurantRatingsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    new-instance v1, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->comment_item:I

    new-instance v4, Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-direct {v4}, Lcom/yopeso/lieferando/model/restaurant/Reviews;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;-><init>(Landroid/content/Context;ILcom/yopeso/lieferando/model/restaurant/Reviews;)V

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$3(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Reviews;)V
    .locals 4
    .param p1, "reviews"    # Lcom/yopeso/lieferando/model/restaurant/Reviews;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    new-instance v1, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->comment_item:I

    invoke-direct {v1, v2, v3, p1}, Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;-><init>(Landroid/content/Context;ILcom/yopeso/lieferando/model/restaurant/Reviews;)V

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;->access$3(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment;)Lcom/yopeso/lieferando/adapters/RestaurantRatingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Reviews;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantRatingsFragment$RestaurantRatingsListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Reviews;)V

    return-void
.end method
