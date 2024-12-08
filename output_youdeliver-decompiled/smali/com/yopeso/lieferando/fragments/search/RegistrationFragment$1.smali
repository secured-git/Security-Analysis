.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$1;
.super Ljava/lang/Object;
.source "RegistrationFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 496
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 492
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$0(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    .line 488
    return-void
.end method
