.class Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;
.super Ljava/lang/Object;
.source "MealOptionsAndExtrasListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

.field private final synthetic val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

.field private final synthetic val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

.field private final synthetic val$currentTextView:Landroid/widget/TextView;

.field private final synthetic val$dialog:Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;

.field private final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;Lcom/yopeso/lieferando/model/meal/Addition;Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;Landroid/widget/TextView;ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->this$2:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$dialog:Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;

    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$currentTextView:Landroid/widget/TextView;

    iput p5, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$groupPosition:I

    iput-object p6, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialogInstance"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v10, 0x1

    .line 209
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$dialog:Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->getNumberOfExtras()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/meal/Addition;->setAmount(I)V

    .line 210
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$currentTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Addition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->this$2:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->price:I

    new-array v4, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/meal/Addition;->getCost()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$addition:Lcom/yopeso/lieferando/model/meal/Addition;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Addition;->getAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->this$2:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$5(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/callback/MealOptionsAndExtraAdapterCallback;->updateMealCostTextView()V

    .line 213
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->this$2:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$6(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    .line 214
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->this$2:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$groupPosition:I

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$additionGroup:Lcom/yopeso/lieferando/model/meal/MealAdditionGroup;

    invoke-static {v0, v1, v2, v10}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$7(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;ILcom/yopeso/lieferando/model/meal/MealAdditionGroup;Z)V

    .line 215
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->this$2:Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;->access$0(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1;)Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;->access$8(Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealOptionsAndExtrasListAdapter$1$2$1;->val$dialog:Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->dismiss()V

    .line 217
    return-void
.end method
