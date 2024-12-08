.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$5;
.super Ljava/lang/Object;
.source "RegistrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

.field private final synthetic val$genderDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$5;->val$genderDialog:Landroid/app/AlertDialog;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    const-string v1, "m"

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$13(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$5;->val$genderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 332
    return-void
.end method
