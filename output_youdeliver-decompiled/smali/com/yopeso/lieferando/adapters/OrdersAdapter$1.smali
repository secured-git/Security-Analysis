.class Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;
.super Ljava/lang/Object;
.source "OrdersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/OrdersAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/UserStore;->isFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$drawable;->heart:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    invoke-static {}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->access$0()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v5, Lcom/yopeso/lieferando/net/listeners/RemoveFavoriteListener;

    invoke-direct {v5}, Lcom/yopeso/lieferando/net/listeners/RemoveFavoriteListener;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 166
    :goto_0
    return-void

    .line 157
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$drawable;->heart_selected:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "restaurantId"

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/adapters/OrdersAdapter;->access$0()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/SetFavouriteRequest;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/OrdersAdapter$1;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v5, Lcom/yopeso/lieferando/net/listeners/AddFavoriteListener;

    invoke-direct {v5}, Lcom/yopeso/lieferando/net/listeners/AddFavoriteListener;-><init>()V

    invoke-direct {v3, v4, v1, v5}, Lcom/yopeso/lieferando/net/requests/SetFavouriteRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/SetFavouriteRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
