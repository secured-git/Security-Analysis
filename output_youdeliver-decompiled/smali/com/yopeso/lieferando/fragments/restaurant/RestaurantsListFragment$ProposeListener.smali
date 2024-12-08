.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProposeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;)V
    .locals 0

    .prologue
    .line 2450
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;)Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$14(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 2468
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$15(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;Lcom/android/volley/VolleyError;)V

    .line 2469
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "proposed"    # Ljava/lang/String;

    .prologue
    .line 2453
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$14(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V

    .line 2454
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2455
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_proposed:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener$1;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener$1;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$ProposeListener;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2461
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2462
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2463
    return-void
.end method
