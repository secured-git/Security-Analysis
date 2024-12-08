.class Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;
.super Ljava/lang/Object;
.source "MealOptionsAndExtrasListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

.field private final synthetic val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

.field private final synthetic val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

.field private final synthetic val$groupPosition:I

.field private final synthetic val$isExpanded:Z


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;Lcom/yopeso/lieferando/model/meal/Addition;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    iput p4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$groupPosition:I

    iput-boolean p5, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$isExpanded:Z

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    .line 527
    .local v4, "currentTextView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMaxChoices()I

    move-result v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v1

    add-int v8, v0, v1

    .line 528
    .local v8, "maxAmount":I
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getMaxAmmount()I

    move-result v0

    if-ge v0, v8, :cond_0

    .line 529
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getMaxAmmount()I

    move-result v8

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v0

    invoke-static {v0, v8}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->newInstance(II)Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;

    move-result-object v3

    .line 533
    .local v3, "dialog":Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$4(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 534
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3$1;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    iget v5, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$groupPosition:I

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    iget-boolean v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;->val$isExpanded:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$3;Lcom/yopeso/lieferando/model/meal/Addition;Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;Landroid/widget/TextView;ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Z)V

    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->setPositivButtonActionListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 547
    return-void
.end method
