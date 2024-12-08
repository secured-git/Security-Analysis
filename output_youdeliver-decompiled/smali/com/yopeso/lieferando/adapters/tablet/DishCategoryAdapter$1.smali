.class Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$1;
.super Ljava/lang/Object;
.source "DishCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

.field private final synthetic val$dish:Lcom/yopeso/lieferando/model/meal/DishCategory;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;Lcom/yopeso/lieferando/model/meal/DishCategory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$1;->val$dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->access$1(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;)Lcom/yopeso/lieferando/callback/IMenuSelected;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$1;->val$dish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/IMenuSelected;->onMenuSelected(Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    .line 88
    return-void
.end method
