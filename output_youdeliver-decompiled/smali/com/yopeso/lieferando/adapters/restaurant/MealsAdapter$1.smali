.class Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$1;
.super Ljava/lang/Object;
.source "MealsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

.field private final synthetic val$meal:Lcom/yopeso/lieferando/model/meal/Meal;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;Lcom/yopeso/lieferando/model/meal/Meal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$1;->val$meal:Lcom/yopeso/lieferando/model/meal/Meal;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;)Lcom/yopeso/lieferando/callback/MealSelectedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$1;->val$meal:Lcom/yopeso/lieferando/model/meal/Meal;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/MealSelectedCallback;->onMealSelected(Lcom/yopeso/lieferando/model/meal/Meal;)V

    .line 158
    return-void
.end method
