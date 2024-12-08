.class public Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "DeliveryServicePremiumDialog.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;


# static fields
.field private static final RESTAURANTS_KEY:Ljava/lang/String; = "restaurants_key"


# instance fields
.field private mCallback:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

.field private mRestaurants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field

.field private mRestaurantsAdapter:Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;

.field private mRestaurantsList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 36
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;)",
            "Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "restos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    new-instance v1, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;-><init>()V

    .line 40
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "restaurants_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method private sortByStreet()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mRestaurants:Ljava/util/ArrayList;

    new-instance v1, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurants_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mRestaurants:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->delivery_services_dialog_premium:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$id;->DeliveryAreas:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mRestaurantsList:Landroid/widget/ListView;

    .line 61
    new-instance v2, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mRestaurants:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, p0}, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mRestaurantsAdapter:Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;

    .line 62
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mRestaurantsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mRestaurantsAdapter:Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-direct {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->sortByStreet()V

    .line 64
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    sget v3, Lcom/yopeso/lieferando/R$string;->delivery_areas:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 68
    .local v0, "d":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 80
    return-void
.end method

.method public onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 1
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mCallback:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    invoke-interface {v0, p1}, Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 74
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->dismiss()V

    .line 75
    return-void
.end method

.method public setCallback(Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryServicePremiumDialog;->mCallback:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    .line 54
    return-void
.end method
