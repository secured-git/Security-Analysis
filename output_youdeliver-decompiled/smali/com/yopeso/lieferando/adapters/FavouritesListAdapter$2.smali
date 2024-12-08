.class Lcom/yopeso/lieferando/adapters/FavouritesListAdapter$2;
.super Ljava/lang/Object;
.source "FavouritesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->setFavourites(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Landroid/view/View;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter$2;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-static {}, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter;->access$1()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/FavouritesListAdapter$2;->val$restaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    new-instance v3, Lcom/yopeso/lieferando/net/listeners/RemoveFavoriteListener;

    invoke-direct {v3}, Lcom/yopeso/lieferando/net/listeners/RemoveFavoriteListener;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;-><init>(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/UnsetFavouriteRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 140
    return-void
.end method
