.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 333
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 335
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const-string v2, "m"

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$34(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Ljava/lang/String;)V

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$35(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->showSaveAndCancelButtons()V

    .line 351
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$36(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V

    .line 354
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->text_register_account:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_2
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$34(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->hideSaveAndCancelButtons()V

    goto :goto_1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
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
    .line 367
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
