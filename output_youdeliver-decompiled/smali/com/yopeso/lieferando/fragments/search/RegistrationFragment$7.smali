.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$7;
.super Ljava/lang/Object;
.source "RegistrationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->isAgbConfirmed()Z
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
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$7;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 544
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 545
    return-void
.end method
