.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;

    iput p2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->val$position:I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Order;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/Order;->setRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->this$1:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2;)Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$9(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;ZI)V

    .line 161
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$2$1;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
