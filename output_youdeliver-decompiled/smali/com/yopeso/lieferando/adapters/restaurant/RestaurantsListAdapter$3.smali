.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;
.super Ljava/lang/Object;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;Lcom/android/volley/RequestQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$heart:Landroid/widget/ImageView;

.field private final synthetic val$requestQueue:Lcom/android/volley/RequestQueue;

.field private final synthetic val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/widget/ImageView;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$heart:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$requestQueue:Lcom/android/volley/RequestQueue;

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 892
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 894
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 895
    .local v2, "favDialog":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/yopeso/lieferando/R$string;->add_favourite_user_not_logggedin:I

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->yes:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 896
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 897
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 915
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v2    # "favDialog":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v4}, Lcom/yopeso/lieferando/util/UserStore;->isFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 903
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$heart:Landroid/widget/ImageView;

    sget v5, Lcom/yopeso/lieferando/R$drawable;->heart:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 904
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v5, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v7, Lcom/yopeso/lieferando/net/listeners/RemoveFavoriteListener;

    invoke-direct {v7}, Lcom/yopeso/lieferando/net/listeners/RemoveFavoriteListener;-><init>()V

    invoke-direct {v5, v6, v7}, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v5}, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 906
    :cond_1
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$heart:Landroid/widget/ImageView;

    sget v5, Lcom/yopeso/lieferando/R$drawable;->heart_selected:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 907
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 909
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "restaurantId"

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_1
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v5, Lcom/yopeso/lieferando/net/requests/SetFavouriteRequest;

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$3;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v7, Lcom/yopeso/lieferando/net/listeners/AddFavoriteListener;

    invoke-direct {v7}, Lcom/yopeso/lieferando/net/listeners/AddFavoriteListener;-><init>()V

    invoke-direct {v5, v6, v3, v7}, Lcom/yopeso/lieferando/net/requests/SetFavouriteRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v5}, Lcom/yopeso/lieferando/net/requests/SetFavouriteRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
