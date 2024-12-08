.class Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$3;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->displayRestaurantsForAddress(Lcom/yopeso/lieferando/model/user/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;

    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->newInstance(Z)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    move-result-object v2

    const-string v3, "RestaurantDetailsFrag"

    invoke-static {v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->access$0(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 105
    return-void
.end method
