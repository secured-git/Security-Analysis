.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener$1;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener$1;->this$1:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;

    .line 2455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener$1;->this$1:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->mListAdapter:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->cleanupInput()V

    .line 2458
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2459
    return-void
.end method
