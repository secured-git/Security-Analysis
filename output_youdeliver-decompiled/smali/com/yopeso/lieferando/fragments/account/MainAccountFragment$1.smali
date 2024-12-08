.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 701
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->validateTheForm()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 702
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 703
    const/4 v0, 0x0

    .line 706
    .local v0, "changes":Z
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 707
    const/4 v0, 0x1

    .line 709
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 710
    const/4 v0, 0x1

    .line 712
    :cond_1
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 713
    const/4 v0, 0x1

    .line 715
    :cond_2
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 716
    const/4 v0, 0x1

    .line 718
    :cond_3
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 719
    const/4 v0, 0x1

    .line 721
    :cond_4
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$8(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 722
    :cond_5
    const/4 v0, 0x1

    .line 725
    :cond_6
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd.MM.yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 727
    .local v3, "format":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 729
    :try_start_0
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 730
    .local v1, "date":Ljava/util/Date;
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_7

    .line 731
    const/4 v0, 0x1

    .line 738
    .end local v1    # "date":Ljava/util/Date;
    :cond_7
    :goto_0
    if-eqz v0, :cond_9

    .line 739
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->showSaveAndCancelButtons()V

    .line 746
    .end local v0    # "changes":Z
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    :cond_8
    :goto_1
    return-void

    .line 733
    .restart local v0    # "changes":Z
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 734
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 742
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_9
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->hideSaveAndCancelButtons()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 697
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 693
    return-void
.end method
