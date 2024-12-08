.class Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;
.super Ljava/lang/Object;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

    iput p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;->val$position:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;)Lcom/yopeso/lieferando/callback/IMenuSelected;

    move-result-object v1

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-interface {v1, v0}, Lcom/yopeso/lieferando/callback/IMenuSelected;->onMenuSelected(Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    .line 49
    return-void
.end method
