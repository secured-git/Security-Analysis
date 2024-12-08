.class Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;
.super Ljava/lang/Object;
.source "MealDetailsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MealsLoadedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/meal/Meal;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;Lcom/android/volley/VolleyError;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/Meal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "meals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/Meal;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/meal/DishCategory;->setMeals(Ljava/util/ArrayList;)V

    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->setMeals(Ljava/util/ArrayList;)V

    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mMealsAdapter:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->notifyDataSetChanged()V

    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$MealsLoadedListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    return-void
.end method
