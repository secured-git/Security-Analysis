.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$2;
.super Ljava/lang/Object;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

.field private final synthetic val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$2;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$2;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/IRestaurantListCallback;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 361
    return-void
.end method
