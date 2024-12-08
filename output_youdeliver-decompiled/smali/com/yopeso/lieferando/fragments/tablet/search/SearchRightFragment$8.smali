.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->dialogFilter(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

.field private final synthetic val$flag:Z

.field private final synthetic val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;ZLcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    iput-boolean p2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->val$flag:Z

    iput-object p3, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->val$flag:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v3, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {v3, v4}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/DeliveryAreaRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
