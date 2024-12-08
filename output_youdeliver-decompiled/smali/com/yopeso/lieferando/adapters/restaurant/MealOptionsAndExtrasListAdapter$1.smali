.class Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;
.super Ljava/lang/Object;
.source "MealOptionsAndExtrasListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->createOptionList(Landroid/widget/LinearLayout;ILandroid/view/ViewGroup;)V
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

.field private final synthetic val$itemsSelected:Landroid/widget/LinearLayout;

.field private final synthetic val$layoutWithSelectedItem:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Landroid/widget/RelativeLayout;Lcom/yopeso/lieferando/model/meal/Addition;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iput p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$groupPosition:I

    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$layoutWithSelectedItem:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    iput-object p6, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$itemsSelected:Landroid/widget/LinearLayout;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 168
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$groupPosition:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 173
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getMaxChoices()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 174
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$layoutWithSelectedItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 177
    .local v1, "vi":Landroid/view/LayoutInflater;
    sget v2, Lcom/yopeso/lieferando/R$layout;->extra_add_menu_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 179
    sget v2, Lcom/yopeso/lieferando/R$id;->closeButton:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 180
    sget v2, Lcom/yopeso/lieferando/R$id;->extraName:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 181
    sget v2, Lcom/yopeso/lieferando/R$id;->extraName:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/meal/Addition;->getCost()I

    move-result v5

    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$3(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget v2, Lcom/yopeso/lieferando/R$id;->closeButton:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v2, v7}, Lcom/yopeso/lieferando/model/meal/Addition;->setSelected(Z)V

    .line 195
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Addition;->getMaxAmmount()I

    move-result v2

    if-le v2, v7, :cond_0

    .line 196
    sget v2, Lcom/yopeso/lieferando/R$id;->extraName:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    iget v6, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$groupPosition:I

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;Lcom/yopeso/lieferando/model/meal/Addition;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$itemsSelected:Landroid/widget/LinearLayout;

    invoke-static {v2, v0, v3}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$9(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Landroid/view/View;Landroid/widget/LinearLayout;)V

    .line 241
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "vi":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$groupPosition:I

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-static {v2, v3, v4, v7}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$7(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Z)V

    .line 242
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$5(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->updateMealCostTextView()V

    .line 243
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$6(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    .line 244
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$8(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    .line 245
    return-void

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2, v7}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$10(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Z)V

    .line 225
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 226
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2, v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$10(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Z)V

    goto :goto_0

    .line 228
    :cond_3
    if-nez p2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$groupPosition:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 234
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v2, v4}, Lcom/yopeso/lieferando/model/meal/Addition;->setSelected(Z)V

    .line 235
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v2, v7}, Lcom/yopeso/lieferando/model/meal/Addition;->setAmount(I)V

    .line 236
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$itemsSelected:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/meal/Addition;->getId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$11(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;Landroid/widget/LinearLayout;I)V

    .line 237
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;->getNumberOfItemSelected()I

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->val$layoutWithSelectedItem:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
