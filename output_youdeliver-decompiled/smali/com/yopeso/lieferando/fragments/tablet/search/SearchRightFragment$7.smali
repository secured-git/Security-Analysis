.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->loadFavourites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 420
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 4
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v3, -0x1

    .line 407
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$12(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$12(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$13(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xae

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$13(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$14(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$14(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->notifyDataSetChanged()V

    .line 415
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$13(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$7;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
