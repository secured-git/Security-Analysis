.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$26;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

.field private final synthetic val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$26;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$26;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 1944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$26;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$26;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->goToRestaurant(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 1949
    return-void
.end method
