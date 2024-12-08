.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$7()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$8(J)V

    .line 156
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Order;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;

    invoke-direct {v3, p0, p3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;I)V

    invoke-direct {v2, v0, v3}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 170
    :cond_0
    return-void
.end method
