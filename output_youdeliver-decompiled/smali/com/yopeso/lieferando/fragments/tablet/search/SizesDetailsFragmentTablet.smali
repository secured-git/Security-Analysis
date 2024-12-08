.class public Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;
.super Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;
.source "SizesDetailsFragmentTablet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/restaurant/SizesDetailsFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;
    .locals 3
    .param p0, "meal"    # Lcom/yopeso/lieferando/model/meal/Meal;

    .prologue
    .line 21
    new-instance v1, Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;-><init>()V

    .line 22
    .local v1, "frag":Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "meal_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method


# virtual methods
.method protected goToMenuFragment(I)V
    .locals 4
    .param p1, "sizeIndex"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/yopeso/lieferando/model/meal/Meal;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;->mMeal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-direct {v0, v1}, Lcom/yopeso/lieferando/model/meal/Meal;-><init>(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 31
    .local v0, "selectedMeal":Lcom/yopeso/lieferando/model/meal/Meal;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getSizes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/meal/Size;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/meal/Size;->setSelected(Z)V

    .line 32
    const-string v1, "goToMenuFragmentTABLET"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->newInstance(Lcom/yopeso/lieferando/model/meal/Meal;)Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    move-result-object v1

    sput-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    .line 34
    sget-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->setFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 35
    sget-object v1, Lcom/yopeso/lieferando/custom/LRActivity;->mealExtrasDialog:Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/tablet/search/SizesDetailsFragmentTablet;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/dialogs/MealExtrasDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    return-void
.end method
