.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

.field private final synthetic val$genderDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;->val$genderDialog:Landroid/app/AlertDialog;

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const-string v1, "w"

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$34(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$37(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$drawable;->icon_woman:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1110
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->showSaveAndCancelButtons()V

    .line 1111
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;->val$genderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1112
    return-void
.end method
