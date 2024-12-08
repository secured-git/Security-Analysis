.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$3;
.super Ljava/lang/Object;
.source "RegistrationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 268
    if-nez p3, :cond_1

    .line 270
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    const-string v1, "m"

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$12(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Ljava/lang/String;)V

    .line 276
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$color;->text_register_account:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    :cond_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    const-string v1, "w"

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$12(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
